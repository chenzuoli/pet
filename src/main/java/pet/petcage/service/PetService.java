package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.PetRepository;
import pet.petcage.entity.Pet;

/**
 * Created by user chenzuoli on 2020/4/1 18:33
 * description: 宠物服务
 */
@Service
public class PetService extends BaseService<Pet> {
    @Autowired
    PetRepository petRepository;

    @Override
    public Pet getById(String id) {
        return null;
    }

    public int addPet(String order_id, String contact, String pet_type, String variety, String nick_name, String gender, String birthday, String avatar_url) {
        System.out.println("params: " + order_id + "," + contact + "," + pet_type + "," + variety + "," + nick_name + "," + gender + "," + birthday + "," + avatar_url);
        return petRepository.addPet(order_id, contact, pet_type, variety, nick_name, gender, birthday, avatar_url);
    }

}
