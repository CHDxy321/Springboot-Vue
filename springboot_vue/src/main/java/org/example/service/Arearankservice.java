package org.example.service;

import org.example.entity.Arearank;
import org.example.mapper.ArearankMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Arearankservice {

    @Autowired
    private ArearankMapper arearankMapper;

    public int save(Arearank arearank) {
        if (arearank.getId() == null) {
            return arearankMapper.insert(arearank); //没有id表示新增
        }else {
            return arearankMapper.update(arearank);
        }
    }
}
