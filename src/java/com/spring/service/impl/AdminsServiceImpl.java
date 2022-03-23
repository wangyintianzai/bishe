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

@Service("AdminsService")
public class AdminsServiceImpl implements AdminsService {

    @Resource
    private AdminsMapper dao;

    public Admins login(String username, String password) {
        Admins user = new Admins();
        user.setUsername(username);
        user.setPwd(password);

        return this.dao.login(user);
    }

    public boolean updatePassword(int id, String newPassword) {
        Admins user = new Admins();
        user.setId(id);
        user.setPwd(newPassword);
        int i = this.dao.update(user);
        return i == 1;
    }

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Admins> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Admins> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Admins> list = dao.selectPage(example);

        PageInfo<Admins> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Admins admins = new Admins();
        admins.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(admins);
    }

    @Override
    public Admins find(Object id) {
        Admins admins = new Admins();
        admins.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(admins);
    }

    @Override
    public int insert(Admins pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Admins pojo) {
        return dao.update(pojo);
    }
}
