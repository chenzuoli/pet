package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.dto.ResultDTO;
import pet.petcage.service.PetService;

/**
 * Created by user chenzuoli on 2020/4/1 18:35
 * description: 宠物控制器
 */
@RestController
public class PetController {
    @Autowired
    Constant constant;
    @Autowired
    PetService petService;

    @RequestMapping(value = "/add_pet", method = RequestMethod.POST)
    public int add_pet(@RequestParam("order_id") String order_id,
                       @RequestParam("contact") String contact,
                       @RequestParam("pet_type") String pet_type,
                       String variety,
                       String nick_name,
                       String gender,
                       String birthday,
                       String avatar_url) {
        return petService.addPet(order_id, contact, pet_type, variety, nick_name, gender, birthday, avatar_url);
    }



}
