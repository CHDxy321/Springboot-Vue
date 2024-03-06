package org.example.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.example.entity.Book;

import java.util.List;

@Mapper
public interface BookMapper {

    @Select("SELECT * from book")
    List<Book> findAll();

    @Select("SELECT * from book limit #{pageNum}, #{pageSize}")
    List<Book> selectPage(Integer pageNum, Integer pageSize);

    @Select("select count(*) from book")
    Integer selectTotal();

    @Insert("insert into book(id,carnum,alert,qiye,adress,location,starttime,endtime,startarea,endarea,hangye) value" +
    "(#{id},#{carnum},#{alert},#{qiye},#{platform},#{jigou},#{location},#{starttime},#{endtime},#{startarea},#{endarea},#{hangye})")
    int insert(Book book);

    @Update("update arearank set id=#{id},carnum=#{carnum},alert=#{alert},qiye=#{qiye},platform=#{platform},jigou=#{jigou},location=#{location},starttime=#{starttime},endtime=#{endtime},startarea=#{startarea},endarea=#{endarea},hangye=#{hangye}")
    int update(Book book);
}
