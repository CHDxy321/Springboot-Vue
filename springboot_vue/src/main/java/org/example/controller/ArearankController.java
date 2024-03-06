package org.example.controller;


import org.example.entity.Arearank;
import org.example.mapper.ArearankMapper;
import org.example.service.Arearankservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/arearank")
public class ArearankController {

    @Autowired
    private ArearankMapper arearankMapper;

    @Autowired
    private Arearankservice arearankservice;

    @PostMapping
    public Integer save(@RequestBody Arearank arearank) {
        //新增、更新
        return arearankservice.save(arearank);
    }

    @GetMapping("")
    public List<Arearank> findAll(){
        List<Arearank> arearanks = arearankMapper.findAll();
        return arearanks;
    }

    @GetMapping("/findAll")
    public  Map<String, Object> findPage(@RequestParam Integer pageNum,@RequestParam Integer pageSize) {
        pageNum = (pageNum-1)*pageSize;
        List<Arearank> data = arearankMapper.selectPage(pageNum, pageSize);
        Integer total = arearankMapper.selectTotal();
        Map<String, Object> res = new HashMap<>();
        res.put("data", data);
        res.put("total", total);
        return res;
    }
//    @GetMapping("/findAll/{pageNum}/{pageSize}")
//    public Page<Arearank> findAll(@PathVariable("pageNum") Integer page, @PathVariable("pageSize") Integer size) {
//        Pageable pageable = PageRequest.of(page - 1, size);
//        return arearankMapper.findAll(pageable);
//    }
}
