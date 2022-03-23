package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface LunbotuMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Lunbotu> selectAll(SelectExample example);

    // 按分页查询数据
    List<Lunbotu> selectPage(SelectExample example);
    // 删除数据
    int delete(Lunbotu pojo);
    // 查询一行数据
    Lunbotu find(Lunbotu pojo);
    // 插入数据
    int insert(Lunbotu pojo);
    // 更新数据
    int update(Lunbotu pojo);
}
