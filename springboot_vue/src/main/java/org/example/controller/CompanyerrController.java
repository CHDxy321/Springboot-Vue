package org.example.controller;

import org.example.entity.Companyerr;
import org.example.mapper.CompanyerrMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/companyerr")
public class CompanyerrController {
    @Autowired
    public CompanyerrMapper companyerrMapper;

    @GetMapping("")
    public List<Companyerr> findAll(){
        List<Companyerr> companyerrs = companyerrMapper.findAll();
        return companyerrs;
    }

    @GetMapping("/findAll")
    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Companyerr> data = companyerrMapper.selectPage(pageNum, pageSize);
        Integer total = companyerrMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }

}
