package top.wetech.pet.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import top.wetech.pet.entity.User;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, String> {

    User findUserById(String id);

    User findUserByMobile(String mobile);

    @Query(value = "select * from users where nickname = ?1", nativeQuery = true)
    List<User> findbyName(String nickName);

    @Modifying
    @Query(value = "delete from users where mobile = :mobile")
    boolean deleteByMobile(@Param("mobile") String mobile);

    @Modifying
    @Query(value = "update users set nickname = ?2 where mobile = ?1")
    boolean updateNameByMobile(@Param("mobile") String mobile, @Param("nickname") String nickname);

}
