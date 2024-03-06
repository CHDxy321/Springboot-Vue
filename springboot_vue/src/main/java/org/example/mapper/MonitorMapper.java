package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Monitor;
import org.example.entity.Qiyedata;

import java.util.List;

@Mapper
public interface MonitorMapper {
    @Select("SELECT * from monitor")
    List<Monitor> findAll();


    @Select("SELECT * from monitor limit #{pageNum}, #{pageSize}")
    List<Monitor> selectPage(Integer pageNum, Integer pageSize);


    @Select("SELECT count(*) from monitor")
    Integer selectTotal();
}
