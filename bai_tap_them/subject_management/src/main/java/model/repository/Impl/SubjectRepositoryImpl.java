package model.repository.Impl;

import model.bean.Subject;
import model.repository.SubjectRepository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SubjectRepositoryImpl implements SubjectRepository {
    @Override
    public List<Subject> selectAllSubject()  {
        List<Subject> subjectList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("SELECT id,namer,versionn,modes,times\n" +
                                                                   "FROM subjects\n");
            ResultSet resultSet = preparedStatement.executeQuery();
            Subject subjectObj;
            while(resultSet.next()){
                subjectObj = new Subject();
                subjectObj.setId(Integer.parseInt(resultSet.getString("id")));
                subjectObj.setName(resultSet.getString("namer"));
                subjectObj.setVersion(resultSet.getString("versionn"));
                subjectObj.setMode(resultSet.getString("modes"));
                subjectObj.setTime(Integer.parseInt(resultSet.getString("times")));

                subjectList.add(subjectObj);
            }
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        return subjectList;
    }

    @Override
    public boolean insert(Subject subjectObj) {
        try {
            PreparedStatement preparedStatement =
                    BaseRepository.connection.prepareStatement("INSERT INTO subjects(namer,versionn,modes,times)\n" +
                            "VALUES(?,?,?,?)");
                    preparedStatement.setString(1,subjectObj.getName());
                    preparedStatement.setString(2,subjectObj.getVersion());
                    preparedStatement.setString(3,subjectObj.getMode());
                    preparedStatement.setString(4, String.valueOf(subjectObj.getTime()));

                    preparedStatement.executeUpdate();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return false;
    }
}
