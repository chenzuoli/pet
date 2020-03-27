package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.User;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    User findUserByPhone(String mobile);

    @Query(value = "select * from user where nick_name = ?1", nativeQuery = true)
    default List<User> findbyName(String nick_name) {
        return null;
    }

    @Transactional
    @Modifying
    @Query(value = "delete from user where phone = :phone", nativeQuery = true)
    int deleteByPhone(@Param("phone") String phone);

    @Transactional
    @Modifying
    @Query(value = "update user set nick_name = '?2' where phone = '?1'", nativeQuery = true)
    int updateNameByPhone(String phone, String nick_name);

    @Query(value = "select * from user where phone = :phone and pwd = password(:pwd)", nativeQuery = true)
    List<User> loginCheck(@Param("phone") String phone, @Param("pwd") String pwd);

    @Transactional
    @Modifying
    @Query(value = "update user set nick_name = '?1', pwd = password(?2) where phone = '?3'", nativeQuery = true)
    int updatePass(String nick_name, String pwd, String phone);

    @Query(value = "select * from user where phone = ?1", nativeQuery = true)
    User getUserWallet(String phone);

    @Query(value = "select * from user where open_id = ?1", nativeQuery = true)
    List<User> getUserByOpenid(String open_id);

    @Transactional
    @Modifying
    @Query(value = "insert into user(phone, open_id, union_id, pwd, user_type, balance, valid_start_date, valid_end_date, token, country, province, city, avatar_url, gender, nick_name, `language`) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)", nativeQuery = true)
    int addUser(String phone,
                    String open_id,
                    String union_id,
                    String pwd,
                    String user_type,
                    String balance,
                    String valid_start_date,
                    String valid_end_date,
                    String token,
                    String country,
                    String province,
                    String city,
                    String avatar_url,
                    String gender,
                    String nick_name,
                    String language);

    @Transactional
    @Modifying
    @Query(value = "update user set union_id = ?1, token = ?2, country = ?3, province = ?4, city = ?5, avatar_url = ?6, gender = ?7, nick_name = ?8, `language` = ?9 where open_id = ?10", nativeQuery = true)
    int updateUser(String union_id, String token, String country, String province, String city, String avatar_url, String gender, String nick_name, String language, String open_id);

    @Query(value = "select * from user where token = ?1", nativeQuery = true)
    List<User> getUserByToken(String token);


}
