package com.spring.controller;

import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 值班信息 模块访问入口
 */
@Controller
public class ZhibanxinxiController extends BaseController {

    @Autowired
    private ZhibanxinxiMapper dao;

    @Autowired
    private ZhibanxinxiService service;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/zhibanxinxi_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类
        String where = " 1=1 "; // 创建初始条件为：1=1
        where += getWhere(); // 从方法中获取url 上的参数，并写成 sql条件语句
        example.setWhere(where); // 将条件写进sql里面
        example.setOrder(order + " " + sort); // 设置查询的排序情况

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page); // 取两个数的最大值，防止page 小于1
        List<Zhibanxinxi> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "zhibanxinxi_list"; // 使用视图文件：WebRoot\zhibanxinxi_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("peizhiduixiang").equals("")) {
            where += " AND peizhiduixiang LIKE '%" + Request.get("peizhiduixiang") + "%' ";
        }
        if (!Request.get("gonghao").equals("")) {
            where += " AND gonghao LIKE '%" + Request.get("gonghao") + "%' ";
        }
        if (!Request.get("zhiwei").equals("")) {
            where += " AND zhiwei ='" + Request.get("zhiwei") + "' ";
        }
        if (!Request.get("xingming").equals("")) {
            where += " AND xingming LIKE '%" + Request.get("xingming") + "%' ";
        }
        if (!Request.get("keyuyueshijianshi").equals("")) {
            where += " AND keyuyueshijianshi LIKE '%" + Request.get("keyuyueshijianshi") + "%' ";
        }
        return where;
    }

    @RequestMapping("/zhibanxinxi_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "zhibanxinxi_add";
    }

    @RequestMapping("/zhibanxinxi_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Zhibanxinxi mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "zhibanxinxi_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/zhibanxinxiinsert")
    public String insert() {
        String tmp = "";
        Zhibanxinxi post = new Zhibanxinxi(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setPeizhiduixiang(Request.getInt("peizhiduixiang"));

        post.setGonghao(Request.get("gonghao"));

        post.setZhiwei(Request.get("zhiwei"));

        post.setXingming(Request.get("xingming"));

        post.setXingqiji(Request.get("xingqiji"));

        post.setKeyuyueshijianshi(Request.get("keyuyueshijianshi"));

        post.setKeyuyueshijianzhi(Request.get("keyuyueshijianzhi"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/zhibanxinxiupdate")
    public String update() {
        // 创建实体类
        Zhibanxinxi post = new Zhibanxinxi();
        // 将前台表单数据填充到实体类
        if (!Request.get("peizhiduixiang").equals("")) post.setPeizhiduixiang(Request.getInt("peizhiduixiang"));
        if (!Request.get("gonghao").equals("")) post.setGonghao(Request.get("gonghao"));
        if (!Request.get("zhiwei").equals("")) post.setZhiwei(Request.get("zhiwei"));
        if (!Request.get("xingming").equals("")) post.setXingming(Request.get("xingming"));
        if (!Request.get("xingqiji").equals("")) post.setXingqiji(Request.get("xingqiji"));
        if (!Request.get("keyuyueshijianshi").equals("")) post.setKeyuyueshijianshi(Request.get("keyuyueshijianshi"));
        if (!Request.get("keyuyueshijianzhi").equals("")) post.setKeyuyueshijianzhi(Request.get("keyuyueshijianzhi"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  删除
     */
    @RequestMapping("/zhibanxinxi_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("zhibanxinxi").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
