package pet.petcage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.petcage.dao.UserRepository;
import pet.petcage.entity.User;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class UserService extends BaseService<User> {

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

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

    public int updatePass(String nick_name, String pwd, String phone) {
        return repo.updatePass(nick_name, pwd, phone);
    }

    public User getUserWallet(String phone) {
        return repo.getUserWallet(phone);
    }

    public List<User> getUserByOpenid(String open_id) {
        return repo.getUserByOpenid(open_id);
    }

    public int addUser(User user) {
        return repo.addUser(
                user.getPhone(),
                user.getOpen_id(),
                user.getUnion_id(),
                UUID.randomUUID().toString(),
                "1",
                "0",
                dateFormat.format(new Date(System.currentTimeMillis())),
                "3000-12-31 00:00:00",
                user.getToken(),
                user.getCountry(),
                user.getProvince(),
                user.getCity(),
                user.getAvatar_url(),
                user.getGender(),
                user.getNick_name(),
                user.getLanguage()
        );
    }

    public int updateUser(User user) {
        return repo.updateUser(
                user.getUnion_id(),
                user.getToken(),
                user.getCountry(),
                user.getProvince(),
                user.getCity(),
                user.getAvatar_url(),
                user.getGender(),
                user.getNick_name(),
                user.getLanguage(),
                user.getOpen_id()
        );
    }

    public List<User> getUserByToken(String token) {
        return repo.getUserByToken(token);
    }

}
