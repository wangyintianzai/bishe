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

@Service("DidianService")
public class DidianServiceImpl implements DidianService {

    @Resource
    private DidianMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Didian> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Didian> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Didian> list = dao.selectPage(example);

        PageInfo<Didian> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Didian didian = new Didian();
        didian.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(didian);
    }

    @Override
    public Didian find(Object id) {
        Didian didian = new Didian();
        didian.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(didian);
    }

    @Override
    public int insert(Didian pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Didian pojo) {
        return dao.update(pojo);
    }
}
