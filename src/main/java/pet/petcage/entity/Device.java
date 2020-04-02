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
 * Created by user chenzuoli on 2020/3/22 16:14
 * description: 设备表
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "device", schema = "petcage")
public class Device {
    @Id
    @GeneratedValue
    private String id; // 自增主键
    private String device_id; // 设备id
    private String device_name; // 设备名称
    private String longitude; // 设备径度
    private String latitude; // 设备纬度
    private String kwh; // 设备电量余额
    private String create_time; //
    private String update_time; //
}
