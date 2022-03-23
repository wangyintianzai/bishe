package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface KaoshijieguoMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Kaoshijieguo> selectAll(SelectExample example);

    // 按分页查询数据
    List<Kaoshijieguo> selectPage(SelectExample example);
    // 删除数据
    int delete(Kaoshijieguo pojo);
    // 查询一行数据
    Kaoshijieguo find(Kaoshijieguo pojo);
    // 插入数据
    int insert(Kaoshijieguo pojo);
    // 更新数据
    int update(Kaoshijieguo pojo);
}
