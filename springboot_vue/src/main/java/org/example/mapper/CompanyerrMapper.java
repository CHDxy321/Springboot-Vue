package org.example.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.Companyerr;

import java.util.List;

@Mapper
public interface CompanyerrMapper {
    @Select("SELECT * from companyerr")
    List<Companyerr> findAll();


    @Select("SELECT * from companyerr limit #{pageNum}, #{pageSize}")
    List<Companyerr> selectPage(Integer pageNum, Integer pageSize);


    @Select("SELECT count(*) from companyerr")
    Integer selectTotal();
}
