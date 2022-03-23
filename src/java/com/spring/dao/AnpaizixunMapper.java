package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface AnpaizixunMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Anpaizixun> selectAll(SelectExample example);

    // 按分页查询数据
    List<Anpaizixun> selectPage(SelectExample example);
    // 删除数据
    int delete(Anpaizixun pojo);
    // 查询一行数据
    Anpaizixun find(Anpaizixun pojo);
    // 插入数据
    int insert(Anpaizixun pojo);
    // 更新数据
    int update(Anpaizixun pojo);
}
