package org.example.controller;

import org.example.entity.Compsecurity;
import org.example.mapper.CompsecurityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/compsecurity")
public class CompsecurityController {

    @Autowired
    private CompsecurityMapper compsecurityMapper;

    @GetMapping
    public List<Compsecurity> findAll(){
        List<Compsecurity> compsecurities = compsecurityMapper.findAll();
        return compsecurities;
    }

    @GetMapping("/findAll")
    public Map<String,Object> findPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize){
        pageNum = (pageNum-1)*pageSize;
        List<Compsecurity> data = compsecurityMapper.selectPage(pageNum,pageSize);
        Integer total = compsecurityMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }

}
