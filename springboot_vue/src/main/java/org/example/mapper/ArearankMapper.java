package org.example.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.example.entity.Arearank;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.List;

@Mapper
public interface ArearankMapper {

    @Select("SELECT * from arearank")
    List<Arearank> findAll();

    @Insert("insert into arearank(id,area,carnum,alertnum,avescore) value " +
            "(#{id},#{area},#{carnum},#{alertnum},#{avescore})")
    int insert(Arearank arearank);

    @Update("update arearank set id=#{id},area=#{area},carnum=#{carnum},alertnum=#{alertnum},avescore=#{avescore} where id = #{id}")
    int update(Arearank arearank);

    @Select("SELECT * from arearank limit #{pageNum}, #{pageSize}")
    List<Arearank> selectPage(Integer pageNum, Integer pageSize);



    @Select("SELECT count(*) from arearank")
    Integer selectTotal();
}

