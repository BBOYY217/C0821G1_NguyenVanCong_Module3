package service;

import model.Student;

import java.sql.*;
import java.util.List;

public class StudentImpl implements StudentService {
    private String jdbcURL = "jdbc:mysql://localhost:3306/demo?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Vancong2107@";

    private static final String INSERT_STUDENT_SQL = "INSERT INTO users (id, name, gender, age, medium score) VALUES (?, ?, ?, ?, ?);";
    private static final String SELECT_STUDENT_BY_ID = "select id, name, gender, age, medium score from students where id =?";
    private static final String SELECT_ALL_STUDENT = "select * from students";
    private static final String DELETE_STUDENT_SQL = "delete from students where id = ?;";
    private static final String UPDATE_STUDENT_SQL = "update users set name = ?,gender= ?, age =?, medium score =? where id = ?;";

    public  StudentImpl() {
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

    @Override
    public void insertUser(Student student) throws SQLException {
        System.out.println(INSERT_STUDENT_SQL);
        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STUDENT_SQL)) {
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getGender());
            preparedStatement.setInt(3, student.getAge());
            preparedStatement.setInt(3, student.getMediumScore());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            printSQLException(e);
        }
    }

    @Override
    public Student selectStudent(int id) {
        Student student = null;
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STUDENT_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String gender = rs.getString("gender");
                int age  = rs.getInt("age");
                int mediumScore  = rs.getInt("medium score");
                student = new Student(id, name,gender,age,mediumScore);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return student;    }

    private void printSQLException(SQLException e) {
        printSQLException(e);
    }

    @Override
    public List<Student> selectAllStudent() {
        return null;
    }

    @Override
    public boolean deleteStudent(int id) throws SQLException {
        return false;
    }

    @Override
    public boolean updateStudent(Student student) throws SQLException {
        return false;
    }
}
