package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    User findUserByPhone(String mobile);

    @Query(value = "select * from user where user_id = ?1", nativeQuery = true)
    List<User> findbyName(String usr_id);

    @Modifying
    @Query(value = "delete from user where phone = :phone", nativeQuery = true)
    boolean deleteByPhone(@Param("phone") String phone);

    @Modifying
    @Query(value = "update user set user_id = '?2' where phone = '?1'", nativeQuery = true)
    boolean updateNameByPhone(String phone, String user_id);

    @Query(value = "select * from user where phone = :phone and pwd = password(:pwd)", nativeQuery = true)
    List<User> loginCheck(@Param("phone") String phone, @Param("pwd") String pwd);

    @Modifying
    @Query(value = "update user set user_id = '?1' pwd = password(?2) where phone = '?3'", nativeQuery = true)
    boolean updatePass(String user_id, String pwd, String phone);

}
