package org.example.service;


import org.example.entity.User;
import org.example.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.spel.ast.NullLiteral;
import org.springframework.stereotype.Service;

@Service
public class Userservice {
    @Autowired
    private UserMapper userMapper;

    public int register(String name, Integer password,String email,String company) {
        return userMapper.register(name, password,email, company);
    }

    public int login(String name, Integer password) {
        return userMapper.login(name, password);}




//    public String save(User user) {
//        if (user.getName() == null) {
//            return  userMapper.insert(user);
//        }
//        else {
//            return null;
//        }
//    }


}
