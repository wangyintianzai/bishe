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

@Service("AnpaizixunService")
public class AnpaizixunServiceImpl implements AnpaizixunService {

    @Resource
    private AnpaizixunMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Anpaizixun> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Anpaizixun> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Anpaizixun> list = dao.selectPage(example);

        PageInfo<Anpaizixun> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Anpaizixun anpaizixun = new Anpaizixun();
        anpaizixun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(anpaizixun);
    }

    @Override
    public Anpaizixun find(Object id) {
        Anpaizixun anpaizixun = new Anpaizixun();
        anpaizixun.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(anpaizixun);
    }

    @Override
    public int insert(Anpaizixun pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Anpaizixun pojo) {
        return dao.update(pojo);
    }
}
