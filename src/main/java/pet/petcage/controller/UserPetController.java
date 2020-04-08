package pet.petcage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.dto.ResultDTO;
import pet.petcage.service.UserPetService;

/**
 * Created by user chenzuoli on 2020/4/8 15:58
 * description: 用户宠物表控制器
 */
@RestController
public class UserPetController {

    @Autowired
    UserPetService userPetService;


    @RequestMapping(value = "/update_user_pet", method = RequestMethod.POST)
    public ResultDTO updateUserPet(@RequestParam("contact") String contact,
                                   @RequestParam("pet_type") String pet_type,
                                   String variety,
                                   String nick_name,
                                   String gender,
                                   String birthday,
                                   String avatar_url,
                                   @RequestParam("open_id") String open_id) {
        int result = userPetService.updateUserPet(contact, pet_type, variety, nick_name, gender, birthday, avatar_url, open_id);
        if (result > 0) {
            return ResultDTO.ok(result);
        } else {
            return ResultDTO.fail("更新失败。");
        }
    }


}
