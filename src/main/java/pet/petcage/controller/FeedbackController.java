package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.service.FeedbackSerevice;


/**
 * Created by user chenzuoli on 2020/3/25 11:19
 * description: 反馈信息控制器
 */
@RestController
public class FeedbackController {

    @Autowired
    FeedbackSerevice feedbackSerevice;

    @RequestMapping(value = "/addFeedback", method = RequestMethod.POST)
    int addFeedback(@RequestParam String user_id,
                        @RequestParam String feedback_type,
                        @RequestParam String feedback_content,
                        @RequestParam String pictures){
        return feedbackSerevice.addFeedback(user_id, feedback_type, feedback_content, pictures);
    }

}
