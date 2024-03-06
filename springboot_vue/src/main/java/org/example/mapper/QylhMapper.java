package org.example.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.example.entity.Qylh;

import java.util.List;

@Mapper
public interface QylhMapper {
    @Select("SELECT * from qylh")
    List<Qylh> findAll();

    @Select("SELECT * from qylh limit #{pageNum}, #{pageSize}")
    List<Qylh> selectPage(Integer pageNum, Integer pageSize);

    @Select("select count(*) from qylh")
    Integer selectTotal();

    @Insert("insert into qylh(dg1,dg2,pt1,pt2,pt3,pt4,pt5,bv1,bv2,bv3,bv4,bv5,bv6,bm1,bm2,bm3,bm4,bm5,bm6,bm7) values"+
    "(dg1=#{dg1},dg2=#{dg2},pt1=#{pt1},pt2=#{pt2},pt3=#{pt3},pt4=#{pt4},pt5=#{pt5},bv1=#{bv1},bv2=#{bv2},bv3=#{bv3},bv4=#{bv4},bv5=#{bv5}," +
            "bv6=#{bv6},bm1=#{bm1},bm2=#{bm2},bm3=#{bm3},bm4=#{bm4},bm5=#{bm5},bm6=#{bm6},bm7=#{bm7})")
    int insert(Qylh qylh);

    @Update("update qylh set dg1=#{dg1},dg2=#{dg2},pt1=#{pt1},pt2=#{pt2},pt3=#{pt3},pt4=#{pt4},pt5=#{pt5},bv1=#{bv1},bv2=#{bv2},bv3=#{bv3},bv4=#{bv4},bv5=#{bv5}" +
            "            bv6=#{bv6},bm1=#{bm1},bm2=#{bm2},bm3=#{bm3},bm4=#{bm4},bm5=#{bm5},bm6=#{bm6},bm7=#{bm7}")
    int uodate(Qylh qylh);
}
