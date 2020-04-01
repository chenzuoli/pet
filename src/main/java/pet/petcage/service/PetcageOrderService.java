package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.PetcageOrderRepository;
import pet.petcage.entity.PetcageOrder;

import java.util.List;

/**
 * Created by user chenzuoli on 2020/4/1 17:23
 * description: 订单服务
 */
@Service
public class PetcageOrderService extends BaseService<PetcageOrder> {
    @Autowired
    PetcageOrderRepository petcageorderRepository;

    @Override
    public PetcageOrder getById(String id) {
        return null;
    }

    public List<PetcageOrder> getPetcageOrder(String phone) {
        return petcageorderRepository.getPetcageOrders(phone);
    }

}
