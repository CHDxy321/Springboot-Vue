package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Qiyedata;

import java.util.List;

@Mapper
public interface QiyedataMapper {
    @Select("SELECT * from qiyedata")
    List<Qiyedata> findAll();


    @Select("SELECT * from qiyedata limit #{pageNum}, #{pageSize}")
    List<Qiyedata> selectPage(Integer pageNum, Integer pageSize);


    @Select("SELECT count(*) from qiyedata")
    Integer selectTotal();
}
