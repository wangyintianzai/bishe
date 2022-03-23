package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface YuangongMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Yuangong> selectAll(SelectExample example);

    // 按分页查询数据
    List<Yuangong> selectPage(SelectExample example);
    // 删除数据
    int delete(Yuangong pojo);
    // 查询一行数据
    Yuangong find(Yuangong pojo);
    // 插入数据
    int insert(Yuangong pojo);
    // 更新数据
    int update(Yuangong pojo);
}
