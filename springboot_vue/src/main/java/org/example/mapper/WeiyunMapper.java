package org.example.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Weiyun;

import java.util.List;

@Mapper
public interface WeiyunMapper {
    @Select("SELECT * from weiyun")
    List<Weiyun> findAll();


    @Select("SELECT * from weiyun limit #{pageNum}, #{pageSize}")
    List<Weiyun> selectPage(Integer pageNum, Integer pageSize);


    @Select("SELECT count(*) from weiyun")
    Integer selectTotal();
}
