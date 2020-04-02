package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.entity.PetcageOrder;
import pet.petcage.service.PetcageOrderService;

import java.text.SimpleDateFormat;
import java.util.Date;
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

    @RequestMapping(value = "/get_petcage_order_by_phone", method = RequestMethod.POST)
    public List<PetcageOrder> getPetcageOrderByPhone(@RequestParam("phone") String phone) {
        return petcageOrderService.getPetcageOrderByPhone(phone);
    }

    @RequestMapping(value = "/get_petcage_order_by_open_id", method = RequestMethod.POST)
    public List<PetcageOrder> getPetcageOrderByOpenId(@RequestParam("open_id") String open_id) {
        return petcageOrderService.getPetcageOrderByOpenId(open_id);
    }

    /**
     * 添加订单
     *
     * @param order_id  订单id
     * @param phone     宠物联系人
     * @param open_id   用户open_id
     * @param device_id 宠笼设备id
     * @return 添加成功或失败 >0表示成功
     */
    @RequestMapping(value = "/add_order", method = RequestMethod.POST)
    public int add_order(@RequestParam("order_id") String order_id,
                         @RequestParam("phone") String phone,
                         @RequestParam("open_id") String open_id,
                         @RequestParam("device_id") String device_id) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String curr_time = simpleDateFormat.format(new Date(System.currentTimeMillis()));
        return petcageOrderService.add_order(order_id, phone, open_id, false, device_id, curr_time);
    }


    /**
     * 订单关闭，已结算完成
     *
     * @param amount   订单金额
     * @param open_id  用户open_id
     * @param order_id 订单id
     * @return >0表示关闭成功 <=0表示关闭失败
     */
    @RequestMapping(value = "/close_order", method = RequestMethod.POST)
    public int close_order(@RequestParam("amount") String amount,
                           @RequestParam("open_id") String open_id,
                           @RequestParam("order_id") String order_id) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String curr_time = simpleDateFormat.format(new Date(System.currentTimeMillis()));
        return petcageOrderService.close_order(curr_time, amount, open_id, order_id);
    }


}
