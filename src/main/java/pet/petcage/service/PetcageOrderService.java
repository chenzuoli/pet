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

    public List<PetcageOrder> getPetcageOrderByPhone(String phone) {
        System.out.println("params: " + phone);
        return petcageorderRepository.getPetcageOrderByPhone(phone);
    }

    public List<PetcageOrder> getPetcageOrderByOpenId(String open_id) {
        System.out.println("params: " + open_id);
        return petcageorderRepository.getPetcageOrderByOpenId(open_id);
    }

    public int add_order(String order_id, String phone, String open_id, boolean is_done, String device_id, String create_time) {
        System.out.println("params: " + order_id + "," + phone + "," + open_id + "," + is_done + "," + device_id + "," + create_time);
        return petcageorderRepository.add_order(order_id, phone, open_id, is_done, device_id, create_time);
    }

    public int close_order(String end_time, String amount, String open_id, String order_id) {
        System.out.println("params: " + end_time + "," + amount + "," + open_id + "," + order_id);
        return petcageorderRepository.close_order(end_time, amount, open_id, order_id);
    }

}
