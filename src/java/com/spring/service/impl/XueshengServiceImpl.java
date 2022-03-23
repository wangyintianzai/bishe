package com.spring.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import com.spring.util.SelectExample;
import java.util.*;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service("XueshengService")
public class XueshengServiceImpl implements XueshengService {

    @Resource
    private XueshengMapper dao;

    public Xuesheng login(String username, String password) {
        Xuesheng user = new Xuesheng();
        user.setXuehao(username);
        user.setMima(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Xuesheng user = new Xuesheng();
        user.setId(id);
        user.setMima(newPassword);
        int i = this.dao.update(user);
        return i == 1;
    }

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Xuesheng> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Xuesheng> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xuesheng> list = dao.selectPage(example);

        PageInfo<Xuesheng> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Xuesheng xuesheng = new Xuesheng();
        xuesheng.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(xuesheng);
    }

    @Override
    public Xuesheng find(Object id) {
        Xuesheng xuesheng = new Xuesheng();
        xuesheng.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(xuesheng);
    }

    @Override
    public int insert(Xuesheng pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Xuesheng pojo) {
        return dao.update(pojo);
    }
}
