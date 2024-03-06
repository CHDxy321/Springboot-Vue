package org.example.controller;


import org.example.entity.Arearank;
import org.example.entity.Qiyedata;
import org.example.mapper.QiyedataMapper;
import org.example.service.Qiyedataservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/qiyedata")
public class QiyedataController {

    @Autowired
    private QiyedataMapper qiyedataMapper;

    @GetMapping("")
    public List<Qiyedata> findAll(){
        List<Qiyedata> qiyedata = qiyedataMapper.findAll();
        return qiyedata;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Qiyedata> data = qiyedataMapper.selectPage(pageNum, pageSize);
        Integer total = qiyedataMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }

}
