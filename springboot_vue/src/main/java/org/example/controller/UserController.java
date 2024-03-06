package org.example.controller;

import org.example.entity.User;
import org.example.mapper.UserMapper;
import org.example.service.Userservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    public UserMapper userMapper;

    @Autowired
    private Userservice userservice;

    @PostMapping("/register")
//    @CrossOrigin("*")
    public String register(@RequestBody User user) {
        System.out.println("有人请求注册！");
        int res = userservice.register(user.getName(), user.getPassword(), user.getEmail(), user.getCompany());
        if(res==1) {
            return "注册成功";
        } else {
            return "注册失败";
        }
    }

    @PostMapping("/login")
//    @CrossOrigin("*")
    public String login(@RequestBody User user) {
        int res = userservice.login(user.getName(), user.getPassword());
        if(res==1) {
            return "登录成功";
        } else {
            return "登录失败";
        }
    }

//    @GetMapping
//    public List<User> findAll(){
//        List<User> users = userMapper.login();
//        return users;
//    }


}
