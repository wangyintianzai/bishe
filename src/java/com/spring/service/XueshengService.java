package com.spring.service;

import com.spring.entity.*;
import com.spring.util.SelectExample;
import java.util.*;

public interface XueshengService {
    // 账号登录
    public Xuesheng login(String username, String password);

    // 修改密码
    public boolean updatePassword(int id, String newPassword);

    // 查询总行数
    Integer count(SelectExample map);
    // 按分页查询数据
    List<Xuesheng> selectPage(SelectExample example, int page, int pageSize);
    // 搜索全部数据
    List<Xuesheng> selectAll(SelectExample example);
    // 按id删除一行数据
    int delete(Object id);
    // 查询一行数据
    Xuesheng find(Object id);
    // 插入一行数据
    int insert(Xuesheng pojo);
    // 更新一行数据
    int update(Xuesheng pojo);
}
