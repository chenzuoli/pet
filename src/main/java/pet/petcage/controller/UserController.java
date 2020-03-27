package pet.petcage.controller;

import com.alibaba.fastjson.JSONObject;
import com.zhenzi.sms.ZhenziSmsClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import pet.petcage.common.Constant;
import pet.petcage.entity.User;
import pet.petcage.service.UserService;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Random;

/**
 * 返回对象
 * //@RestController
 * <p>
 * 返回的内容是去根目录寻找相应的jsp文件
 * //@Controller
 */
@RestController
public class UserController {

    @Autowired
    Constant constant;
    @Autowired
    UserService userService;

    /**
     * 获取用户信息
     *
     * @param phone 用户手机号
     * @return 返回用户对象
     */
    @RequestMapping(value = "/getUserByPhone", method = RequestMethod.POST)
    public User getUserByPhone(@RequestParam String phone) {
        return userService.getById(phone);
    }

    /**
     * 用户名、密码方式登录检验
     *
     * @param phone 用户手机号
     * @param pwd   用户密码
     * @return 用户名密码是否匹配
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public boolean login(@RequestParam String phone, @RequestParam String pwd) {
        return userService.loginCheck(phone, pwd);
    }

    /**
     * 发送短信
     *
     * @param phone       手机号
     * @param httpSession session
     * @return boolean 发送成功、失败
     */
    @RequestMapping("/smsCode")
    public boolean smsCode(@RequestParam String phone, HttpSession httpSession) {
        try {
            ZhenziSmsClient client = new ZhenziSmsClient(
                    constant.getSms_url(),
                    constant.getSms_app_id(),
                    constant.getSms_app_secret());
            HashMap<String, String> params = new HashMap<>();
            String code = String.valueOf(100000 + new Random().nextInt(899999));
            params.put("message", "您的验证码为:" + code + "，该码有效期为5分钟，该码只能使用一次!");
            params.put("number", phone);
            String result = client.send(params);
            JSONObject json = JSONObject.parseObject(result);
            if (json.getIntValue("code") != 0) {//发送短信失败
                return false;
            }
            //将验证码存到session中,同时存入创建时间
            //以json存放，这里使用的是阿里的fastjson
            json = new JSONObject();
            json.put("phone", phone);
            json.put("code", code);
            json.put("createTime", System.currentTimeMillis());
            // 将认证码存入SESSION
            httpSession.setAttribute("code", json);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * 注册验证验证码
     *
     * @param phone       手机号
     * @param code        前端传回验证码
     * @param httpSession session
     * @return 验证结果
     */
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public JSONObject smsCodeCheck(@RequestParam String phone,
                                   @RequestParam String code,
                                   HttpSession httpSession) {
        JSONObject result = new JSONObject();
        JSONObject json = (JSONObject) httpSession.getAttribute("code");
        if (System.currentTimeMillis() - 5 * 60 * 1000 > Long.parseLong(json.getString("createTime"))) {
            result.put("code", 0);
            result.put("msg", "验证码失效");
        } else {
            if (phone.equals(json.getString("phone")) && code.equals(json.getString("code"))) {
                result.put("code", "1");
                result.put("msg", "验证码正确");
            } else {
                result.put("code", "0");
                result.put("msg", "验证码错误");
            }
        }
        return result;
    }

    /**
     * 更新用户密码
     *
     * @param nick_name   用户昵称
     * @param pwd         用户新密码
     * @param phone       用户手机号
     * @param code        更改密码手机验证码
     * @param httpSession session
     * @return 更新结果
     */
    @RequestMapping(value = "/updatePass", method = RequestMethod.POST)
    public JSONObject updatePass(@RequestParam("nick_name") String nick_name,
                                 @RequestParam("pwd") String pwd,
                                 @RequestParam("phone") String phone,
                                 @RequestParam("code") String code,
                                 HttpSession httpSession) {
        JSONObject json = (JSONObject) httpSession.getAttribute("code");
        JSONObject result = new JSONObject();
        if (System.currentTimeMillis() - 5 * 60 * 1000 > Long.parseLong(json.getString("createTime"))) {
            result.put("code", 0);
            result.put("msg", "验证码失效");
        } else {
            if (phone.equals(json.getString("phone")) && code.equals(json.getString("code"))) {
                int flag = userService.updatePass(nick_name, pwd, phone);
                result.put("code", flag > 0 ? "1" : "0");
                result.put("msg", flag> 0 ? "更新成功" : "更新失败");
            } else {
                result.put("code", "0");
                result.put("msg", "验证码错误");
            }
        }
        return result;
    }

    /**
     * 获取用户钱包信息
     *
     * @param phone 用户手机号
     * @return 返回用户钱包信息
     */
    @RequestMapping(value = "/getUserWallet", method = RequestMethod.POST)
    public User getUserWallet(@RequestParam("phone") String phone) {
        User userWallet = userService.getUserWallet(phone);
        userWallet.setPhone("");
        userWallet.setOpen_id("");
        userWallet.setUnion_id("");
        userWallet.setPwd("");
        return userWallet;
    }

    @RequestMapping(value = "/getUserByOpenid", method = RequestMethod.POST)
    public List<User> getUserByOpenid(@RequestParam("open_id") String open_id) {
        return userService.getUserByOpenid(open_id);
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public int addUser(User user) {
        return userService.addUser(user);
    }

    @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
    public int updateUser(User user) {
        return userService.updateUser(user);
    }

}
