package org.example.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.example.entity.Compsecurity;

import java.util.List;

@Mapper
public interface CompsecurityMapper {
    @Select("SELECT * from compsecurity")
    List<Compsecurity> findAll();

    @Select("SELECT * from compsecurity limit #{pageNum}, #{pageSize}")
    List<Compsecurity> selectPage(Integer pageNum, Integer pageSize);

    @Select("select count(*) from compsecurity")
    Integer selectTotal();

    @Insert("insert into compsecurity(agebelow30,agefrom30to40,agefrom40to50,ageupper50,workagebelow2,workagefrom2to5,workageupper5,breakscore,vehiclenums,vehicleone,vehicletwo,peoplenums,trainnums,traintime,saftymoney,accident,deathnum,hurtnum,pitfall)"
    +"values (,agebelow30=#{agebelow30},agefrom30to40=#{agefrom30to40},agefrom40to50=#{agefrom40to50},ageupper50=#{ageupper50},workagebelow2=#{workagebelow2},workagefrom2to5=#{workagefrom2to5},workageupper5=#{workageupper5},breakscore=#{breakscore},vehiclenums=#{vehiclenums},vehicleone=#{vehicleone},vehicletwo=#{vehicletwo}," +
            "peoplenums=#{peoplenums},trainnums=#{trainnums},traintime=#{traintime},saftymoney=#{saftymoney},accident=#{accident},deathnum=#{deathnum},hurtnum=#{hurtnum},pitfall=#{pitfall})")
    int insert(Compsecurity compsecurity);

    @Update("update compsecurity set agebelow30=#{agebelow30},agefrom30to40=#{agefrom30to40},agefrom40to50=#{agefrom40to50},ageupper50=#{ageupper50},workagebelow2=#{workagebelow2},workagefrom2to5=#{workagefrom2to5},workageupper5=#{workageupper5},breakscore=#{breakscore},vehiclenums=#{vehiclenums},vehicleone=#{vehicleone},vehicletwo=#{vehicletwo}," +
            "peoplenums=#{peoplenums},trainnums=#{trainnums},traintime=#{traintime},saftymoney=#{saftymoney},accident=#{accident},deathnum=#{deathnum},hurtnum=#{hurtnum},pitfall=#{pitfall}")
    int update(Compsecurity compsecurity);
}
