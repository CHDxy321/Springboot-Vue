package org.example.controller;

import org.example.entity.keyun;
import org.example.mapper.KeyunMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/keyun")
public class KeyunController {
    @Autowired
    public KeyunMapper keyunMapper;

    @GetMapping("")
    public List<keyun> findAll(){
        List<keyun> keyuns = keyunMapper.findAll();
        return keyuns;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<keyun> data = keyunMapper.selectPage(pageNum, pageSize);
        Integer total = keyunMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }
}
