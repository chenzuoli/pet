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
    private String order_id; // 订单id
    private String contact; // 宠物联系人
    private String pet_type; // 宠物类型
    private String variety; // 宠物品种
    private String nick_name; // 宠物昵称
    private String gender; // 宠物性别
    private String birthday; // 宠物出生日期
    private String avatar_url; // 宠物头像
    private String create_time;
    private String update_time;
}
