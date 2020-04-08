package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.UserPetRepository;
import pet.petcage.entity.UserPet;

/**
 * Created by user chenzuoli on 2020/4/8 15:57
 * description: 用户宠物表服务
 */
@Service
public class UserPetService extends BaseService<UserPet> {
    @Autowired
    UserPetRepository userPetRepository;

    @Override
    public UserPet getById(String id) {
        return null;
    }

    public int updateUserPet(String contact, String pet_type, String variety, String nick_name, String gender, String birthday, String avatar_url, String open_id) {
        System.out.println("params: " + contact + "," + pet_type + "," + variety + "," + nick_name + "," + gender + "," + birthday + "," + avatar_url + "," + open_id);
        return userPetRepository.updateUserPet(contact, pet_type, variety, nick_name, gender, birthday, avatar_url, open_id);
    }
}
