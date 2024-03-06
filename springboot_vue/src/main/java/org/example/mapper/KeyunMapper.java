package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.keyun;

import java.util.List;

@Mapper
public interface KeyunMapper {
    @Select("SELECT * from keyun")
    List<keyun> findAll();


    @Select("SELECT * from keyun limit #{pageNum}, #{pageSize}")
    List<keyun> selectPage(Integer pageNum, Integer pageSize);


    @Select("SELECT count(*) from keyun")
    Integer selectTotal();
}
