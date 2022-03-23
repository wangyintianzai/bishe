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

@Service("LunbotuService")
public class LunbotuServiceImpl implements LunbotuService {

    @Resource
    private LunbotuMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Lunbotu> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Lunbotu> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Lunbotu> list = dao.selectPage(example);

        PageInfo<Lunbotu> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Lunbotu lunbotu = new Lunbotu();
        lunbotu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(lunbotu);
    }

    @Override
    public Lunbotu find(Object id) {
        Lunbotu lunbotu = new Lunbotu();
        lunbotu.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(lunbotu);
    }

    @Override
    public int insert(Lunbotu pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Lunbotu pojo) {
        return dao.update(pojo);
    }
}
