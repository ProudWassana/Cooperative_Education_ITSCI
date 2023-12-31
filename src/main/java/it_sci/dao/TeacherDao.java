package it_sci.dao;

import it_sci.model.*;

import java.util.List;

public interface TeacherDao {

    Teacher getTeacherById(int teacher_id);

    Teacher getteacherProfile(int id);
    Student getStudent(String id);
    List<Mentor> getMentorsByStudentId(String studentId);

    List<Teacher> getAllTeachers();

    List<Student> getSemester(String semester);

    void saveTeacherEvaluate (TeacherEvaluate teacherEvaluate);

    List<Company>getCompanyToAssignByTeacher(int teacher_id);

    List<Company> getListCompanySupervision(String semester,int teacher_id);
    List<Company> getListCompanySupervision(int teacher_id);
}
