package model.service.Impl;

import model.bean.Subject;
import model.repository.Impl.SubjectRepositoryImpl;
import model.service.SubjectService;

import java.util.List;

public class SubjectServiceImpl implements SubjectService {
    private final SubjectRepositoryImpl subjectRepository = new SubjectRepositoryImpl();

    @Override
    public List<Subject> selectAllSubject() {
        return subjectRepository.selectAllSubject() ;
    }

    @Override
    public boolean insert(Subject subjectObj) {
        return subjectRepository.insert(subjectObj);
    }
}
