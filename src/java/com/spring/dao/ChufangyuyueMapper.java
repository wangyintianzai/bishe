package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ChufangyuyueMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Chufangyuyue> selectAll(SelectExample example);

    // 按分页查询数据
    List<Chufangyuyue> selectPage(SelectExample example);
    // 删除数据
    int delete(Chufangyuyue pojo);
    // 查询一行数据
    Chufangyuyue find(Chufangyuyue pojo);
    // 插入数据
    int insert(Chufangyuyue pojo);
    // 更新数据
    int update(Chufangyuyue pojo);
}
