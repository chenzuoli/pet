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
 * Created by user chenzuoli on 2020/4/1 18:23
 * description: 宠物表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "pet", schema = "petcage")
public class Pet {
    @Id
    @GeneratedValue
    private String id;
    private String order_id;
    private String pet_type;
    private String variety;
    private String nick_name;
    private String gender;
    private String age;
    private String create_time;
    private String update_time;
}
