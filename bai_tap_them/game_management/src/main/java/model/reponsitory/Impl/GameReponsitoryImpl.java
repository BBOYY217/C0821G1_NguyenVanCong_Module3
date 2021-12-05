package model.reponsitory.Impl;

import model.bean.Game;
import model.reponsitory.GameReponsitory;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class GameReponsitoryImpl implements GameReponsitory {

    private String jdbcURL = "jdbc:mysql://localhost:3306/game_management?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Vancong2107@";

    private static final String SELECT_GAME_BY_ID = "SELECT id,name,version,mode,category FROM game WHERE id = ?";
    private static final String SELECT_ALL_GAME = "SELECT * FROM game";
    private static final String DELETE_GAME_SQL = "DELETE FROM game WHERE id = ?;";
    private static final String UPDATE_GAME_SQL = "UPDATE game SET name = ?,version = ?, mode = ?,category = ? WHERE id = ?;";

    private static final String SQL_INSERT = "INSERT INTO game (name, version, mode, category) VALUES (?,?,?,?,?)";
    private static final String SQL_UPDATE = "UPDATE game SET version = ? WHERE name = ?";
    private static final String SQL_TABLE_CREATE = "CREATE TABLE game"
     + "("
             + " id SERIAL,"
             + " namer VARCHAR(45) NOT NULL,"
             + " version VARCHAR (45) NOT NULL,"
             + " mode VARCHAR (45) NOT NULL,"
             + " category VARCHAR (45) NOT NULL,"
             + " PRIMARY KEY (id)"
             + ")";

    private static final String SQL_TABLE_DROP = "DROP TABLE IF EXISTS game";


    public GameReponsitoryImpl() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    @Override
    public Game selectGame(int id) {
        Game game = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_GAME_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("version");
                String mode = rs.getString("mode");
                String category = rs.getString("category");
                game = new Game(id, name, email, mode, category);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return game;
    }

    @Override
    public List<Game> selectAllGames() {
        List<Game> games = new ArrayList<>();
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_GAME);) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String version = rs.getString("version");
                String mode = rs.getString("mode");
                String category = rs.getString("category");
                games.add(new Game(id, name, version, mode, category));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return games;    }

    @Override
    public boolean deleteGame(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_GAME_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    @Override
    public boolean updateGame(Game game) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_GAME_SQL);) {
            statement.setString(1, game.getCategory());
            statement.setString(2, game.getName());
            statement.setString(3, game.getVersion());
            statement.setString(4, game.getMode());
            statement.setString(5, game.getCategory());
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    @Override
    public Game getGameById(int id) {
        Game game = null;
        String query = "{CALL get_game_by_id(?)}";
        try (Connection connection = getConnection();
             CallableStatement callableStatement = connection.prepareCall(query);) {
            callableStatement.setInt(1, id);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("version");
                String mode = rs.getString("mode");
                String category = rs.getString("category");
                game = new Game(id, name, email, mode, category);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return game;
    }

    @Override
    public void insertUpdateWithoutTransaction() {
        try (Connection conn = getConnection();
             Statement statement = conn.createStatement();
             PreparedStatement psInsert = conn.prepareStatement(SQL_INSERT);
             PreparedStatement psUpdate = conn.prepareStatement(SQL_UPDATE)) {
            statement.execute(SQL_TABLE_DROP);
            statement.execute(SQL_TABLE_CREATE);

            psInsert.setString(1, "Valorant");
            psInsert.setString(2, "7.0");
            psInsert.setString(3, "medium");
            psInsert.setString(4, "fps");
            psInsert.execute();

            psInsert.setString(1, "LOL");
            psInsert.setString(2, "30.0");
            psInsert.setString(3, "medium");
            psInsert.setString(4, "mobile");
            psInsert.execute();

            psUpdate.setBigDecimal(2, new BigDecimal(999.99));
            psUpdate.setString(2, "Valorant");
            psUpdate.execute();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void insertUpdateGameTransaction() {
        try (Connection conn = getConnection();
             Statement statement = conn.createStatement();
             PreparedStatement psInsert = conn.prepareStatement(SQL_INSERT);
             PreparedStatement psUpdate = conn.prepareStatement(SQL_UPDATE)) {
            statement.execute(SQL_TABLE_DROP);
            statement.execute(SQL_TABLE_CREATE);

            psInsert.setString(1, "Valorant");
            psInsert.setString(2, "7.0");
            psInsert.setString(3, "medium");
            psInsert.setString(4, "fps");
            psInsert.execute();

            psInsert.setString(1, "LOL");
            psInsert.setString(2, "30.0");
            psInsert.setString(3, "medium");
            psInsert.setString(4, "mobile");
            psInsert.execute();

            psUpdate.setBigDecimal(1, new BigDecimal(999.99));
            psUpdate.setString(2, "Valorant");
            psUpdate.execute();
            conn.commit();
            conn.setAutoCommit(true);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}

