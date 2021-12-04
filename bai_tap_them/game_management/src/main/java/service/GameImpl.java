package service;

import model.Game;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class GameImpl extends GameService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Vancong2107@";

    private static final String INSERT_STUDENT_SQL = "INSERT INTO users (id, name, gender, age, medium score) VALUES (?, ?, ?, ?, ?);";
    private static final String SELECT_STUDENT_BY_ID = "select id, name, gender, age, medium score from students where id =?";
    private static final String SELECT_ALL_STUDENT = "select * from students";
    private static final String DELETE_STUDENT_SQL = "delete from students where id = ?;";
    private static final String UPDATE_STUDENT_SQL = "update users set name = ?,gender= ?, age =?, medium score =? where id = ?;";

    public  GameImpl() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
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
}
