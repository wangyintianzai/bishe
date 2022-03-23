package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface XinwenMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Xinwen> selectAll(SelectExample example);

    // 按分页查询数据
    List<Xinwen> selectPage(SelectExample example);
    // 删除数据
    int delete(Xinwen pojo);
    // 查询一行数据
    Xinwen find(Xinwen pojo);
    // 插入数据
    int insert(Xinwen pojo);
    // 更新数据
    int update(Xinwen pojo);
}
