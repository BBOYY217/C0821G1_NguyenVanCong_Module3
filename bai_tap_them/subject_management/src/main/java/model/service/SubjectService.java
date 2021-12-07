package model.service;

import model.bean.Subject;

import java.util.List;

public interface SubjectService {
    List<Subject> selectAllSubject();
    boolean insert(Subject subjectObj);
    boolean delete(int id);
    boolean update(Subject subjectObj);
}
