package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.FeedbackRepository;
import pet.petcage.entity.Feedback;


/**
 * Created by user chenzuoli on 2020/3/25 11:18
 * description: 反馈信息服务
 */
@Service
public class FeedbackSerevice extends BaseService<Feedback> {
    @Autowired
    FeedbackRepository feedRepo;

    @Override
    public Feedback getById(String id) {
        return null;
    }

    public int addFeedback(String user_id, String feedback_type, String feedback_content, String pictures) {
        return feedRepo.addFeedback(user_id, feedback_type, feedback_content, pictures);
    }

}
