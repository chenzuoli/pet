package top.wetech.pet.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import top.wetech.pet.entity.User;

public interface UserRepository extends JpaRepository<User, String> {
    User findUserById(String id);
    User findUserByMobile(String mobile);
}
