package pet.petcage.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "users", schema = "petcage")
public class User {
    @Id
    @GeneratedValue
    private String id;
    private String user_id;
    private String phone;
    private String open_id;
    private String union_id;
    private String pwd;
    private String create_time;
    private String update_time;
}
