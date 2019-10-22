package top.wetech.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.wetech.pet.entity.User;
import top.wetech.pet.dao.UserRepository;

@Service
public class UserService extends BaseService {

    @Autowired
    UserRepository repo;

    @Override
    public User getUserById(String id) {
        return repo.findUserById(id);
    }

    @Override
    public User getUserByMobile(String mobile) {
        return repo.findUserByMobile(mobile);
    }



}
