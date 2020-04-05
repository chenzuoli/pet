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
 * Created by user chenzuoli on 2020/4/5 18:45
 * description: 微信小程序信息
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "app_info", schema = "petcage")
public class AppInfo {
    @Id
    @GeneratedValue
    private String id;
    private String service_content;
    private String private_content;
    private String version;
    private String create_time;
    private String update_time;
}
