package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminsMapper {
    Admins login(Admins admins);

    Integer count(SelectExample map);
    // 查询全部数据
    List<Admins> selectAll(SelectExample example);

    // 按分页查询数据
    List<Admins> selectPage(SelectExample example);
    // 删除数据
    int delete(Admins pojo);
    // 查询一行数据
    Admins find(Admins pojo);
    // 插入数据
    int insert(Admins pojo);
    // 更新数据
    int update(Admins pojo);
}
