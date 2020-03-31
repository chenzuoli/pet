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
 * Created by user chenzuoli on 2020/3/22 16:23
 * description: 日志表
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "petcage_order", schema = "petcage")
public class PetcageOrder {
    @Id
    @GeneratedValue
    private String id; // 自增主键
    private String phone; // 用户手机号
    private String is_done; // 订单是否完成
    private String device_id; // 设备id；
    private String start_time; // 订单开始时间
    private String end_time; // 订单结束时间
    private String amount; // 订单金额
    private String create_time; //
    private String update_time; //
}
