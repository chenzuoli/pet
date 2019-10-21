package top.wetech.pet.entity;

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
@Table(name = "users", schema = "test")
public class User {
    @Id
    @GeneratedValue
    private String id;
    private String mobile;
    private String nickname;
    private String gender;
    private String age;
    private String idcard;
    private String createtime;
    private String updatetime;
}
