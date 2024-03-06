package org.example.controller;

import org.example.entity.Qylh;
import org.example.mapper.QylhMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/qylh")
public class QylhController {
    @Autowired
    public QylhMapper qylhMapper;

    @GetMapping
    public List<Qylh> findAll(){
        List<Qylh> qylhs = qylhMapper.findAll();
        return qylhs;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Qylh> data = qylhMapper.selectPage(pageNum,pageSize);
        Integer total = qylhMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }

}
