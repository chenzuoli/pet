package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.UserRepository;
import pet.petcage.entity.User;

@Service
public class UserService extends BaseService {

    @Autowired
    UserRepository repo;

    @Override
    public User getUserById(String id) {
        return repo.findUserById(id);
    }

    @Override
    public User getUserByPhone(String phone) {
        return repo.findUserByPhone(phone);
    }

}
