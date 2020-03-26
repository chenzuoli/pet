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

    /**
     * 添加信息反馈
     *
     * @param phone            用户手机号
     * @param feedback_type    反馈类型：订单反馈
     * @param feedback_content 反馈内容
     * @param pictures         反馈图片
     * @param latitude         反馈时用户径度
     * @param longitude        反馈时用户纬度
     * @param petcage_id       笼牌号
     * @param desc             反馈描述
     * @return
     */
    @RequestMapping(value = "/addFeedback", method = RequestMethod.POST)
    int addFeedback(@RequestParam String phone,
                    @RequestParam String feedback_type,
                    @RequestParam String feedback_content,
                    @RequestParam String pictures,
                    @RequestParam String latitude,
                    @RequestParam String longitude,
                    @RequestParam String petcage_id,
                    @RequestParam String desc) {
        return feedbackSerevice.addFeedback(phone, feedback_type, feedback_content, pictures,
                latitude, longitude, petcage_id, desc);
    }

}
