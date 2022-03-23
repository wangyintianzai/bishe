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

@Service("YuangongService")
public class YuangongServiceImpl implements YuangongService {

    @Resource
    private YuangongMapper dao;

    @Override
    public Integer count(SelectExample map) {
        return dao.count(map);
    }

    @Override
    public List<Yuangong> selectAll(SelectExample example) {
        return dao.selectAll(example);
    }

    @Override
    public List<Yuangong> selectPage(SelectExample example, int page, int pageSize) {
        PageHelper.startPage(page, pageSize, true);
        List<Yuangong> list = dao.selectPage(example);

        PageInfo<Yuangong> pageInfo = new PageInfo(list);
        PageInfoUtil pageInfoUtil = new PageInfoUtil(page);
        pageInfoUtil.setPageInfo(Request.getRequest(), pageInfo.getTotal(), pageSize);

        return list;
    }

    @Override
    public int delete(Object id) {
        Yuangong yuangong = new Yuangong();
        yuangong.setId(Integer.valueOf(String.valueOf(id)));
        return dao.delete(yuangong);
    }

    @Override
    public Yuangong find(Object id) {
        Yuangong yuangong = new Yuangong();
        yuangong.setId(Integer.valueOf(String.valueOf(id)));
        return dao.find(yuangong);
    }

    @Override
    public int insert(Yuangong pojo) {
        return dao.insert(pojo);
    }

    @Override
    public int update(Yuangong pojo) {
        return dao.update(pojo);
    }
}
