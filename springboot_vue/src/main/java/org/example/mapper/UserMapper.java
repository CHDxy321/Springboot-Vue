package org.example.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.example.entity.User;

import java.util.List;


@Mapper
public interface UserMapper {

    @Select("SELECT count(*) FROM demoblog.user where name=#{name} and password=#{password}")
    int login(String name, Integer password);

//
    @Insert("insert into demoblog.user(name,password,email,company,num) value" +
            "((#{name},#{password},#{email},#{company},null)")
    int register(String name, Integer password, String email, String company);


}
