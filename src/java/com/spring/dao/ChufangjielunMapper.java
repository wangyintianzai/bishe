package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ChufangjielunMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Chufangjielun> selectAll(SelectExample example);

    // 按分页查询数据
    List<Chufangjielun> selectPage(SelectExample example);
    // 删除数据
    int delete(Chufangjielun pojo);
    // 查询一行数据
    Chufangjielun find(Chufangjielun pojo);
    // 插入数据
    int insert(Chufangjielun pojo);
    // 更新数据
    int update(Chufangjielun pojo);
}
