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
 * 初访预约 模块访问入口
 */
@Controller
public class ChufangyuyueController extends BaseController {

    @Autowired
    private ChufangyuyueMapper dao;

    @Autowired
    private ChufangyuyueService service;

    /**
     * 后台列表页
     */
    @RequestMapping("/chufangyuyue_list")
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
        List<Chufangyuyue> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 生成统计语句
        Map total = Query.make("chufangyuyue").field("(avg(zongdefen)) avg_zongdefen,(min(zongdefen)) min_zongdefen,(max(zongdefen)) max_zongdefen").where(where).find();
        // 将统计语句写给界面调用
        assign("total", total);
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "chufangyuyue_list"; // 使用视图文件：WebRoot\chufangyuyue_list.jsp
    }

    /**
     * 获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("yuyueren").equals("")) {
            where += " AND yuyueren LIKE '%" + Request.get("yuyueren") + "%' ";
        }
        if (!Request.get("xingming").equals("")) {
            where += " AND xingming LIKE '%" + Request.get("xingming") + "%' ";
        }
        if (!Request.get("zhuangtai").equals("")) {
            where += " AND zhuangtai ='" + Request.get("zhuangtai") + "' ";
        }
        if (!Request.get("chufangjielun").equals("")) {
            where += " AND chufangjielun ='" + Request.get("chufangjielun") + "' ";
        }
        return where;
    }

    /**
     * 预约人列表
     */
    @RequestMapping("/chufangyuyue_list_yuyueren")
    public String listyuyueren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：预约人=当前登录用户
        String where = " yuyueren='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Chufangyuyue> list = service.selectPage(example, page, 12);

        Map total = Query.make("chufangyuyue").field("(avg(zongdefen)) avg_zongdefen,(min(zongdefen)) min_zongdefen,(max(zongdefen)) max_zongdefen").where(where).find();
        request.setAttribute("total", total);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "chufangyuyue_list_yuyueren";
    }

    @RequestMapping("/chufangyuyue_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "chufangyuyue_add";
    }

    @RequestMapping("/chufangyuyueadd")
    public String addWeb() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        return "chufangyuyueadd";
    }

    @RequestMapping("/chufangyuyue_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Chufangyuyue mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "chufangyuyue_updt";
    }

    /**
     * 添加内容
     *
     * @return
     */
    @RequestMapping("/chufangyuyueinsert")
    public String insert() {
        String tmp = "";
        Chufangyuyue post = new Chufangyuyue(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setYuyuebianhao(Request.get("yuyuebianhao"));

        post.setYuyueren(Request.get("yuyueren"));

        post.setXingming(Request.get("xingming"));

        post.setXingbie(Request.get("xingbie"));

        post.setShouji(Request.get("shouji"));

        post.setBanji(Request.get("banji"));

        post.setZongdefen(Request.getDouble("zongdefen"));

        post.setZhuangtai(Request.get("zhuangtai"));

        post.setChufangjielun(Request.get("chufangjielun"));

        post.setAddtime(Info.getDateStr());

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();
      /*  Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer")*/
        return showSuccess("保存成功,即将前往问卷，请认真完成问卷答题，否则无法预约","chufangyuyuedetail.do?id="+charuid );
    }

    /**
     * 更新内容
     *
     * @return
     */
    @RequestMapping("/chufangyuyueupdate")
    public String update() {
        // 创建实体类
        Chufangyuyue post = new Chufangyuyue();
        // 将前台表单数据填充到实体类
        if (!Request.get("yuyuebianhao").equals("")) post.setYuyuebianhao(Request.get("yuyuebianhao"));
        if (!Request.get("yuyueren").equals("")) post.setYuyueren(Request.get("yuyueren"));
        if (!Request.get("xingming").equals("")) post.setXingming(Request.get("xingming"));
        if (!Request.get("xingbie").equals("")) post.setXingbie(Request.get("xingbie"));
        if (!Request.get("shouji").equals("")) post.setShouji(Request.get("shouji"));
        if (!Request.get("banji").equals("")) post.setBanji(Request.get("banji"));
        if (!Request.get("zongdefen").equals("")) post.setZongdefen(Request.getDouble("zongdefen"));
        if (!Request.get("zhuangtai").equals("")) post.setZhuangtai(Request.get("zhuangtai"));
        if (!Request.get("chufangjielun").equals("")) post.setChufangjielun(Request.get("chufangjielun"));
        if (!Request.get("addtime").equals("")) post.setAddtime(Request.get("addtime"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     * 前台详情
     */
    @RequestMapping("/chufangyuyuedetail")
    public String detailweb() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Chufangyuyue map = service.find(id);

        request.setAttribute("map", map);
        return "chufangyuyuedetail"; // 前台详情页面：WebRoot\chufangyuyuedetail.jsp
    }

    /**
     * 删除
     */
    @RequestMapping("/chufangyuyue_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("chufangyuyue").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
