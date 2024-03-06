package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Carinfo;

import java.util.List;

@Mapper
public interface CarinfoMapper {
    @Select("SELECT * from carinfo")
    List<Carinfo> findAll();


    @Select("SELECT * from carinfo limit #{pageNum}, #{pageSize}")
    List<Carinfo> selectPage(Integer pageNum, Integer pageSize);


    @Select("SELECT count(*) from carinfo")
    Integer selectTotal();
}
