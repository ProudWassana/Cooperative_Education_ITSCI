package it_sci.dao;

import it_sci.model.*;

import java.util.Date;
import java.util.List;

public interface TeacherEvaluateDao {


    List<TeacherEvaluate> getTeacherEvaluateByTeacherId (int tEvaId,int companyId,String semester);

    List<TeacherEvaluate> getViewTeacherEvaluateByStudentSemester(String semester,int teacher_id);

    List<TeacherEvaluate> getStatusByStudentSemester(String semester);

    List<TeacherAnswer> getTeacherAnswerBySemester();

    List<TeacherEvaluate> getViewTeacherEvaluate (int teacher_id);
    List<TeacherEvaluate> getTeacherEvaluate();

    List<TeacherEvaluate> getCompanyAssignBySemester(String semester);
    List<String> getAllListSemester();

    List<MentorAnswer> getMentorAnswerBySemester(String semester);
    List<TeacherAnswer> getTeacherAnswerBySemester(String semester);
    void saveTeacherAnswer(TeacherAnswer teacherAnswer);

    void saveTeacherEvaluate(TeacherEvaluate teacherEvaluate);

    TeacherEvaluate updateTeacherEvaluate (TeacherEvaluate teacherEvaluate);

    void updateTeacherEvaluateByCompanyId (TeacherEvaluate teacherEvaluate);

    TeacherEvaluate getTeacherEvaluateById(long ass_id);

    List<TeacherEvaluate> getTeacherStatusBySemester(String semester);
    List<MentorEvaluate> getMentorStatusBySemester(String semester);
    List<TeacherEvaluate> getTeacherStatusBySemester();
    List<MentorEvaluate> getMentorStatusBySemester();
    List<TeacherEvaluate> getListTeacherEvaluateBySemester(String semester);

    List<Teacher> getAssignTeacher(int company_id, String semester, Date teacher_super_vision_date,String teacher_super_vision_time);

    Teacher getUpdateAssignTeacher(int company_id, String semester, Date teacher_super_vision_date,String teacher_super_vision_time);

    List<Teacher> getTeacherByStatusOn();

    List<TeacherEvaluate> getSubmitAssignTeacher(int company_id,String semester);

    List<TeacherEvaluate> getCheckAssignTeacher();


}
