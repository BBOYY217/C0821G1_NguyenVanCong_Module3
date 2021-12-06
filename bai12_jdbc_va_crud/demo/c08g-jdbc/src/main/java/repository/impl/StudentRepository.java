package repository.impl;

import bean.Student;
import repository.IStudentRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class StudentRepository implements IStudentRepository {

    @Override
    public List<Student> findAll() {
        List<Student> studentList = new ArrayList<>();

        try {
            Statement statement = BaseRepository.connection.createStatement();
            ResultSet resultSet =
                    statement.executeQuery("select id, `name`, date_of_birth\n" +
                                        "from student");

            Student studentObj = null;
            while (resultSet.next()) {
                studentObj = new Student();
                studentObj.setId(Integer.parseInt(resultSet.getString("id")));
                studentObj.setName(resultSet.getString("name"));
                studentObj.setDateOfBirth(resultSet.getString("date_of_birth"));

                studentList.add(studentObj);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return studentList;
    }

    @Override
    public Student findById(Integer id) {
        return null;
    }

    @Override
    public boolean save(Student studentObj) {

        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement(
                            "insert into student(`name`, date_of_birth)\n" +
                            "values(?, ?)");
            preparedStatement.setString(1, studentObj.getName());
            preparedStatement.setString(2, studentObj.getDateOfBirth());

            preparedStatement.executeUpdate();
//            Statement statement = BaseRepository.connection.createStatement();
//            ResultSet resultSet = statement.executeQuery(
//                    "insert into student(`name`, date_of_birth)\n" +
//                            "values(" + studentObj.getName() + ","
//                            + studentObj.getDateOfBirth() + ")");
//
//            resultSet.next();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }
}
