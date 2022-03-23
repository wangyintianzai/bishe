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

@Service("ChufangjielunService")
public class ChufangjielunServiceImpl implements ChufangjielunService {

    @Resource
    private ChufangjielunMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Chufangjielun> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Chufangjielun> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Chufangjielun> list = dao.selectPage(example);

        PageInfo<Chufangjielun> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Chufangjielun chufangjielun = new Chufangjielun();
        chufangjielun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(chufangjielun);
    }

    @Override
    public Chufangjielun find(Object id) {
        Chufangjielun chufangjielun = new Chufangjielun();
        chufangjielun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(chufangjielun);
    }

    @Override
    public int insert(Chufangjielun pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Chufangjielun pojo) {
        return dao.update(pojo);
    }
}
