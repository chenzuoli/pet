package top.wetech.pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import top.wetech.pet.entity.User;
import top.wetech.pet.service.UserService;

@RestController
public class UserController {
    @Autowired
    JdbcTemplate jdbc;

    @Autowired
    UserService service;

    @RequestMapping("/index")
    public String index(){
        return "Hello Spring Boot.";
    }

    @RequestMapping("/getUserById")
    public User getUserById(@RequestParam String id){
        return service.getUserById(id);
    }

    @RequestMapping("/getUserByMobile")
    public User getUserByMobile(@RequestParam String mobile){
        return service.getUserByMobile(mobile);
    }

}
