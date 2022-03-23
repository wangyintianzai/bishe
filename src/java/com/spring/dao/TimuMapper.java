package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface TimuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Timu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Timu> selectPage(SelectExample example);
    // 删除数据
    int delete(Timu pojo);
    // 查询一行数据
    Timu find(Timu pojo);
    // 插入数据
    int insert(Timu pojo);
    // 更新数据
    int update(Timu pojo);
}
