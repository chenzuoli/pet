package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.Feedback;

import javax.transaction.Transactional;


/**
 * Created by user chenzuoli on 2020/3/25 11:06
 * description: 反馈信息工厂
 */
@Repository
public interface FeedbackRepository extends JpaRepository<Feedback, String> {

    @Transactional
    @Modifying
    @Query(value = "insert into feedback(phone, feedback_type, feedback_content, pictures, latitude, longitude, petcage_id, `desc`) values(?,?,?,?,?,?,?,?)", nativeQuery = true)
    int addFeedback(String phone, String feedback_type, String feedback_content, String pictures, String latitude, String longitude, String petcage_id, String desc);

}
