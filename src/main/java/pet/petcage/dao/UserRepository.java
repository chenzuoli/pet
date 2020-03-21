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

    User findUserById(String id);

    User findUserByPhone(String mobile);

    @Query(value = "select * from users where user_id = ?1", nativeQuery = true)
    List<User> findbyName(String usr_id);

    @Modifying
    @Query(value = "delete from users where phone = :phone", nativeQuery = true)
    boolean deleteByPhone(@Param("phone") String phone);

    @Modifying
    @Query(value = "update users set user_id = ?2 where phone = ?1", nativeQuery = true)
    boolean updateNameByPhone(@Param("phone") String phone, @Param("user_id") String user_id);

}
