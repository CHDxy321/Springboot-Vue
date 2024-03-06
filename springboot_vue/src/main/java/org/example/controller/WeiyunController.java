package org.example.controller;

import org.example.entity.Weiyun;
import org.example.mapper.WeiyunMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/weiyun")
public class WeiyunController {
    @Autowired
    public WeiyunMapper weiyunMapper;

    @GetMapping("")
    public List<Weiyun> findAll(){
        List<Weiyun> weiyuns = weiyunMapper.findAll();
        return weiyuns;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Weiyun> data = weiyunMapper.selectPage(pageNum, pageSize);
        Integer total = weiyunMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }

}
