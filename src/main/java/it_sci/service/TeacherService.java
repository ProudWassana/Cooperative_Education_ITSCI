package it_sci.service;

import it_sci.model.*;

import java.util.List;

public interface TeacherService {
    Teacher getTeacherById(int teacher_id);
    List<Teacher> getAllTeachers();
    Student getStudent(String student_id);
    List<Mentor> getMentorsByStudentId(String studentId);

    List<Student> getSemester(String semester);

    void saveTeacherEvaluate (TeacherEvaluate teacherEvaluate);
    List<Company> getCompanyToAssignByTeacher(int teacher_id);
    List<Company> getListCompanySupervision(String semester,int teacher_id);
    List<Company> getListCompanySupervision(int teacher_id);
}
