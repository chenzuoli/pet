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
 * Created by user chenzuoli on 2020/3/22 16:24
 * description: 用户表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "user", schema = "petcage")
public class User {
    @Id
    @GeneratedValue
    private String id; // 自增主键
    private String user_id; // 用户id
    private String phone; // 手机号
    private String open_id; // 用户小程序open_id
    private String union_id; // 用户小程序union_id
    private String pwd; // 用户账号密码
    private String create_time; // 创建时间
    private String update_time; // 更新时间
}
