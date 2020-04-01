package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.Pet;

import javax.transaction.Transactional;

/**
 * Created by user chenzuoli on 2020/4/1 18:30
 * description: 宠物仓库
 */
@Repository
public interface PetRepository extends JpaRepository<Pet, String> {
    @Transactional
    @Modifying
    @Query(value = "insert into pet(order_id, pet_type, variety, nick_name, gender, age) values(?1,?2,?3,?4,?5,?6)", nativeQuery = true)
    int add_pet(String order_id, String pet_type, String variety, String nick_name, String gender, String age);
}
