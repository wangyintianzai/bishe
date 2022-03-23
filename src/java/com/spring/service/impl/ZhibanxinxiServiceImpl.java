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

@Service("ZhibanxinxiService")
public class ZhibanxinxiServiceImpl implements ZhibanxinxiService {

    @Resource
    private ZhibanxinxiMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Zhibanxinxi> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Zhibanxinxi> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Zhibanxinxi> list = dao.selectPage(example);

        PageInfo<Zhibanxinxi> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Zhibanxinxi zhibanxinxi = new Zhibanxinxi();
        zhibanxinxi.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(zhibanxinxi);
    }

    @Override
    public Zhibanxinxi find(Object id) {
        Zhibanxinxi zhibanxinxi = new Zhibanxinxi();
        zhibanxinxi.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(zhibanxinxi);
    }

    @Override
    public int insert(Zhibanxinxi pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Zhibanxinxi pojo) {
        return dao.update(pojo);
    }
}
