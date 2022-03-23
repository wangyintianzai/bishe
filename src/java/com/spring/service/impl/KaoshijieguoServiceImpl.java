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

@Service("KaoshijieguoService")
public class KaoshijieguoServiceImpl implements KaoshijieguoService {

    @Resource
    private KaoshijieguoMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Kaoshijieguo> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Kaoshijieguo> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Kaoshijieguo> list = dao.selectPage(example);

        PageInfo<Kaoshijieguo> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Kaoshijieguo kaoshijieguo = new Kaoshijieguo();
        kaoshijieguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(kaoshijieguo);
    }

    @Override
    public Kaoshijieguo find(Object id) {
        Kaoshijieguo kaoshijieguo = new Kaoshijieguo();
        kaoshijieguo.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(kaoshijieguo);
    }

    @Override
    public int insert(Kaoshijieguo pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Kaoshijieguo pojo) {
        return dao.update(pojo);
    }
}
