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

@Service("ChufangyuyueService")
public class ChufangyuyueServiceImpl implements ChufangyuyueService {

    @Resource
    private ChufangyuyueMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Chufangyuyue> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Chufangyuyue> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Chufangyuyue> list = dao.selectPage(example);

        PageInfo<Chufangyuyue> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Chufangyuyue chufangyuyue = new Chufangyuyue();
        chufangyuyue.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(chufangyuyue);
    }

    @Override
    public Chufangyuyue find(Object id) {
        Chufangyuyue chufangyuyue = new Chufangyuyue();
        chufangyuyue.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(chufangyuyue);
    }

    @Override
    public int insert(Chufangyuyue pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Chufangyuyue pojo) {
        return dao.update(pojo);
    }
}
