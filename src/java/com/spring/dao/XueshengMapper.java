package com.spring.dao;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;
import org.springframework.stereotype.Repository;

@Repository
public interface XueshengMapper {
    Xuesheng login(Xuesheng xuesheng);

    Integer count(SelectExample map);
    // 查询全部数据
    List<Xuesheng> selectAll(SelectExample example);

    // 按分页查询数据
    List<Xuesheng> selectPage(SelectExample example);
    // 删除数据
    int delete(Xuesheng pojo);
    // 查询一行数据
    Xuesheng find(Xuesheng pojo);
    // 插入数据
    int insert(Xuesheng pojo);
    // 更新数据
    int update(Xuesheng pojo);
}
