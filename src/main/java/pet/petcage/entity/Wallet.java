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
 * Created by user chenzuoli on 2020/3/22 16:25
 * description: 钱包
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "wallet", schema = "petcage")
public class Wallet {
    @Id
    @GeneratedValue
    private String id; // 自增主键
    private String user_id; // 用户id
    private String user_type; // 用户类型：1普通会员,2周卡会员,3月卡会员,4季卡会员,5年卡会员
    private String balance; // 余额
    private String valid_start_date; // 会员有效开始日期
    private String valid_end_date; // 会员有效结算日期
    private String create_time; //
    private String update_time; //
}
