package model.repository;

import model.bean.Subject;

import java.sql.SQLException;
import java.util.List;

public interface SubjectRepository {
    List<Subject> selectAllSubject() throws SQLException;
    boolean insert(Subject subjectObj);
    boolean delete(int id);
    boolean update(Subject subjectObj);
}
