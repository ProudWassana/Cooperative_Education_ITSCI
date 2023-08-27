package it_sci.dao;

import it_sci.model.Company;
import it_sci.model.MentorEvaluate;
import java.util.List;

public interface MentorEvaluateDao {

    List<MentorEvaluate> getAllMentorEvaluates ();
    MentorEvaluate getMentorEvaluateById (String mEvaId);
    void saveMentorEvaluate(MentorEvaluate mentorEvaluate);
    MentorEvaluate updateMentorEvaluate (MentorEvaluate mentorEvaluate);
    List<MentorEvaluate> getMentorEvaluateByMentorId (int mEvaId);
    void deleteMentorEvaluate (String mEvaId);

}