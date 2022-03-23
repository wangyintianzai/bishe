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

@Service("XinwenfenleiService")
public class XinwenfenleiServiceImpl implements XinwenfenleiService {

    @Resource
    private XinwenfenleiMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Xinwenfenlei> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Xinwenfenlei> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xinwenfenlei> list = dao.selectPage(example);

        PageInfo<Xinwenfenlei> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Xinwenfenlei xinwenfenlei = new Xinwenfenlei();
        xinwenfenlei.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(xinwenfenlei);
    }

    @Override
    public Xinwenfenlei find(Object id) {
        Xinwenfenlei xinwenfenlei = new Xinwenfenlei();
        xinwenfenlei.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(xinwenfenlei);
    }

    @Override
    public int insert(Xinwenfenlei pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Xinwenfenlei pojo) {
        return dao.update(pojo);
    }
}
