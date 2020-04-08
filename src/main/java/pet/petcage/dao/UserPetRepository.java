package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.UserPet;

import javax.transaction.Transactional;

/**
 * Created by user chenzuoli on 2020/4/8 15:55
 * description: 用户宠物表工厂
 */
@Repository
public interface UserPetRepository extends JpaRepository<UserPet, String> {

    @Transactional
    @Modifying
    @Query(value = "update user_pet set contact = ?1, pet_type = ?2, variety = ?3, nick_name = ?4, gender = ?5, birthday = ?6, avatar_url = ?7 where open_id = ?8", nativeQuery = true)
    int updateUserPet(String contact, String pet_type, String variety, String nick_name, String gender, String birthday, String avatar_url, String open_id);

}
