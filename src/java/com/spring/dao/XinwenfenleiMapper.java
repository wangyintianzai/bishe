package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface XinwenfenleiMapper {
    Integer count(SelectExample map);
    // 查询全部数据
    List<Xinwenfenlei> selectAll(SelectExample example);

    // 按分页查询数据
    List<Xinwenfenlei> selectPage(SelectExample example);
    // 删除数据
    int delete(Xinwenfenlei pojo);
    // 查询一行数据
    Xinwenfenlei find(Xinwenfenlei pojo);
    // 插入数据
    int insert(Xinwenfenlei pojo);
    // 更新数据
    int update(Xinwenfenlei pojo);
}
