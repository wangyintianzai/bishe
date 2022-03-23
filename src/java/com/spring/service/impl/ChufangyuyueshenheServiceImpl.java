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

@Service("ChufangyuyueshenheService")
public class ChufangyuyueshenheServiceImpl implements ChufangyuyueshenheService {

    @Resource
    private ChufangyuyueshenheMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Chufangyuyueshenhe> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Chufangyuyueshenhe> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Chufangyuyueshenhe> list = dao.selectPage(example);

        PageInfo<Chufangyuyueshenhe> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Chufangyuyueshenhe chufangyuyueshenhe = new Chufangyuyueshenhe();
        chufangyuyueshenhe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(chufangyuyueshenhe);
    }

    @Override
    public Chufangyuyueshenhe find(Object id) {
        Chufangyuyueshenhe chufangyuyueshenhe = new Chufangyuyueshenhe();
        chufangyuyueshenhe.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(chufangyuyueshenhe);
    }

    @Override
    public int insert(Chufangyuyueshenhe pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Chufangyuyueshenhe pojo) {
        return dao.update(pojo);
    }
}
