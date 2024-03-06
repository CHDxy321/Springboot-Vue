package org.example.controller;


import org.example.entity.Carinfo;
import org.example.mapper.CarinfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/carinfo")
public class CarinfoController {
    @Autowired
    public CarinfoMapper carinfoMapper;

    @GetMapping("")
    public List<Carinfo> findAll(){
        List<Carinfo> carinfos = carinfoMapper.findAll();
        return carinfos;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Carinfo> data = carinfoMapper.selectPage(pageNum, pageSize);
        Integer total = carinfoMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }
}
