package top.wetech.pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import top.wetech.pet.common.Constant;
import top.wetech.pet.entity.User;
import top.wetech.pet.service.UserService;

/**
 * 返回对象
 */
// @RestController
/**
 * 返回的内容是去根目录寻找相应的jsp文件
 */
@Controller
public class UserController {
    @Autowired
    JdbcTemplate jdbc;
    @Autowired
    Constant constant;
    @Autowired
    UserService userService;

    @RequestMapping("/index")
    public String index(){
        return "Hello Spring Boot.";
    }

    @RequestMapping("/getUserById")
    public User getUserById(@RequestParam String id){
        return userService.getUserById(id);
    }

    @RequestMapping("/getUserByMobile")
    public User getUserByMobile(@RequestParam String mobile){
        return userService.getUserByMobile(mobile);
    }

    @GetMapping("/getIndexJsp")
    public String testJsp(Model model){
        model.addAttribute("message", "This is index jsp page.");
        return "index";
    }

}
