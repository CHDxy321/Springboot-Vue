package org.example.controller;

import org.example.entity.Arearank;
import org.example.entity.Monitor;
import org.example.mapper.MonitorMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/monitor")
public class MonitorController {
    @Autowired
    private MonitorMapper monitorMapper;

    @GetMapping("")
    public List<Monitor> findAll(){
        List<Monitor> monitors= monitorMapper.findAll();
        return monitors;
    }

    @GetMapping("/findAll")
    public  Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Monitor> data = monitorMapper.selectPage(pageNum, pageSize);
        Integer total = monitorMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }
}
