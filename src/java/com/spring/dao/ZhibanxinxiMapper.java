package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface ZhibanxinxiMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Zhibanxinxi> selectAll(SelectExample example);

    // 按分页查询数据
    List<Zhibanxinxi> selectPage(SelectExample example);
    // 删除数据
    int delete(Zhibanxinxi pojo);
    // 查询一行数据
    Zhibanxinxi find(Zhibanxinxi pojo);
    // 插入数据
    int insert(Zhibanxinxi pojo);
    // 更新数据
    int update(Zhibanxinxi pojo);
}
