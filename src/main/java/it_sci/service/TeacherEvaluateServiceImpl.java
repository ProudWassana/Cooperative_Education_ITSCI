package it_sci.service;


import it_sci.dao.StudentDao;
import it_sci.dao.TeacherEvaluateDao;
import it_sci.model.TeacherAnswer;
import it_sci.model.TeacherEvaluate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class TeacherEvaluateServiceImpl implements TeacherEvaluateService {

    @Autowired
    private TeacherEvaluateDao teacherEvaluateDao;

    @Autowired
    private StudentDao studentDao;

    @Override
    @Transactional
    public List<TeacherEvaluate> getTeacherEvaluateByTeacherId(int tEvaId, int companyId) {
            return teacherEvaluateDao.getTeacherEvaluateByTeacherId(tEvaId,companyId);
    }

    @Override
    @Transactional
    public List<TeacherEvaluate> getViewTeacherEvaluate(int teacher_id) {
        return teacherEvaluateDao.getViewTeacherEvaluate(teacher_id);
    }


    @Override
    @Transactional
    public List<String> getAllListSemester()  {
        return teacherEvaluateDao.getAllListSemester();

    }

    @Override
    @Transactional
    public void saveTeacherEvaluate(TeacherEvaluate teacherEvaluate) {
        teacherEvaluateDao.saveTeacherEvaluate(teacherEvaluate);
    }

    @Override
    @Transactional
    public TeacherEvaluate updateTeacherEvaluate (TeacherEvaluate teacherEvaluate) {
        teacherEvaluateDao.updateTeacherEvaluate(teacherEvaluate);
        return teacherEvaluate;
    }

    @Override
    @Transactional
    public void saveTeacherAnswer(TeacherAnswer teacherAnswer) {
        teacherEvaluateDao.saveTeacherAnswer(teacherAnswer);
    }

    @Override
    @Transactional
    public TeacherEvaluate getTeacherEvaluateById(long ass_id) {
        return teacherEvaluateDao.getTeacherEvaluateById(ass_id);
    }

    @Override
    @Transactional
    public List<TeacherEvaluate> getTeacherEvaluate() {
        return teacherEvaluateDao.getTeacherEvaluate();
    }




}
