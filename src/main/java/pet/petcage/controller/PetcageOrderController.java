package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.entity.PetcageOrder;
import pet.petcage.service.PetcageOrderService;

import java.util.List;

/**
 * Created by user chenzuoli on 2020/4/1 17:26
 * description: 订单控制器
 */
@RestController
public class PetcageOrderController {
    @Autowired
    Constant constant;
    @Autowired
    PetcageOrderService petcageOrderService;

    @RequestMapping(value = "/get_petcage_order", method = RequestMethod.POST)
    public List<PetcageOrder> getPetcageOrder(@RequestParam("phone") String phone) {
        return petcageOrderService.getPetcageOrder(phone);
    }
}
