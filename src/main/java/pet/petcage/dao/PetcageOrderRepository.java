package pet.petcage.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pet.petcage.entity.PetcageOrder;

import java.util.List;

/**
 * Created by user chenzuoli on 2020/4/1 17:17
 * description: 订单仓库
 */
@Repository
public interface PetcageOrderRepository extends JpaRepository<PetcageOrder, String> {

    @Query(value = "select * from petcage_order where phone = ?1 and is_done = false", nativeQuery = true)
    List<PetcageOrder> getPetcageOrders(String phone);

}
