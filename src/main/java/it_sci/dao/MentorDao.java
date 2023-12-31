package it_sci.dao;

import it_sci.model.Mentor;
import it_sci.model.Student;
import java.util.List;

public interface MentorDao {
    Mentor getMentorById(int mentor_id);
    List<Mentor> getMentorByIdAndStuId(int mentor_id,String term);
    List<Mentor> getListStudentByMenterId(int mentor_id);
    Mentor getMentorProfile(int id);

    List<Mentor> getManageLoginMentor(String semester);

    List<Mentor> getMentorPasswordNotNull();

    void updateMentorPassword(Mentor mentor);

    Mentor updateMentor (Mentor mentor) ;

//    List<Student> getMentorDoesNotHaveStudent(int id);

}
