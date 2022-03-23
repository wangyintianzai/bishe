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

@Service("XinwenService")
public class XinwenServiceImpl implements XinwenService {

    @Resource
    private XinwenMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Xinwen> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Xinwen> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Xinwen> list = dao.selectPage(example);

        PageInfo<Xinwen> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Xinwen xinwen = new Xinwen();
        xinwen.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(xinwen);
    }

    @Override
    public Xinwen find(Object id) {
        Xinwen xinwen = new Xinwen();
        xinwen.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(xinwen);
    }

    @Override
    public int insert(Xinwen pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Xinwen pojo) {
        return dao.update(pojo);
    }
}
