package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.UserRepository;
import pet.petcage.entity.User;

import java.util.List;

@Service
public class UserService extends BaseService<User> {

    @Autowired
    UserRepository repo;

    @Override
    public User getById(String id) {
        return repo.findUserByPhone(id);
    }

    public boolean loginCheck(String phone, String pwd) {
        List<User> users = repo.loginCheck(phone, pwd);
        System.out.println(users);
        return users.size() != 0;
    }

    public boolean updatePass(String user_id, String pwd, String phone) {
        return repo.updatePass(user_id, pwd, phone);
    }

    public User getUserWallet(String phone) {
        return repo.getUserWallet(phone);
    }
}
