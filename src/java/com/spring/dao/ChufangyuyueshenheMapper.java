package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ChufangyuyueshenheMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Chufangyuyueshenhe> selectAll(SelectExample example);

    // 按分页查询数据
    List<Chufangyuyueshenhe> selectPage(SelectExample example);
    // 删除数据
    int delete(Chufangyuyueshenhe pojo);
    // 查询一行数据
    Chufangyuyueshenhe find(Chufangyuyueshenhe pojo);
    // 插入数据
    int insert(Chufangyuyueshenhe pojo);
    // 更新数据
    int update(Chufangyuyueshenhe pojo);
}
