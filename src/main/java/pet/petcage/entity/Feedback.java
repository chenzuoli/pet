package pet.petcage.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by user chenzuoli on 2020/3/23 08:15
 * description: 反馈表
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "feedback", schema = "petcage")
public class Feedback {
    @Id
    @GeneratedValue
    private String id;
    private String phone;
    private String feedback_type;
    private String feedback_content;
    private String pictures;
    private String latitude;
    private String longitude;
    private String petcage_id;
    private String description;
    private String create_time;
    private String update_time;
}
