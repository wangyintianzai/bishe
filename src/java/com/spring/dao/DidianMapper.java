package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface DidianMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Didian> selectAll(SelectExample example);

    // 按分页查询数据
    List<Didian> selectPage(SelectExample example);
    // 删除数据
    int delete(Didian pojo);
    // 查询一行数据
    Didian find(Didian pojo);
    // 插入数据
    int insert(Didian pojo);
    // 更新数据
    int update(Didian pojo);
}
