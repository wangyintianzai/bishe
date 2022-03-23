package com.spring.controller;

import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.*;

import com.spring.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 安排咨询 模块访问入口
 */
@Controller
public class AnpaizixunController extends BaseController {

    @Autowired
    private AnpaizixunMapper dao;

    @Autowired
    private AnpaizixunService service;

    @Autowired
    private ChufangyuyueService serviceRead;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/anpaizixun_list")
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
        List<Anpaizixun> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "anpaizixun_list"; // 使用视图文件：WebRoot\anpaizixun_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 判断URL 参数chufangyuyueid是否大于0
        if (Request.getInt("chufangyuyueid") > 0) {
            // 大于0 则写入条件
            where += " AND chufangyuyueid='" + Request.getInt("chufangyuyueid") + "' ";
        }
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("yuyueren").equals("")) {
            where += " AND yuyueren LIKE '%" + Request.get("yuyueren") + "%' ";
        }
        if (!Request.get("xingming").equals("")) {
            where += " AND xingming LIKE '%" + Request.get("xingming") + "%' ";
        }
        if (!Request.get("anpaizixunshi").equals("")) {
            where += " AND anpaizixunshi ='" + Request.get("anpaizixunshi") + "' ";
        }
        if (!Request.get("kaishishijian").equals("")) {
            where += " AND kaishishijian LIKE '%" + Request.get("kaishishijian") + "%' ";
        }
        if (!Request.get("didian").equals("")) {
            where += " AND didian ='" + Request.get("didian") + "' ";
        }
        if (!Request.get("jiean").equals("")) {
            where += " AND jiean LIKE '%" + Request.get("jiean") + "%' ";
        }
        return where;
    }

    /**
     * 预约人列表
     */
    @RequestMapping("/anpaizixun_list_yuyueren")
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

        List<Anpaizixun> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "anpaizixun_list_yuyueren";
    }

    @RequestMapping("/anpaizixun_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id"); // 根据id 获取 初访预约模块中的数据
        Chufangyuyue readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap", readMap);
        return "anpaizixun_add";
    }

    @RequestMapping("/anpaizixun_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Anpaizixun mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "anpaizixun_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/anpaizixuninsert")
    public String insert() {
        String tmp = "";
        Anpaizixun post = new Anpaizixun(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setChufangyuyueid(Request.getInt("chufangyuyueid"));

        post.setYuyuebianhao(Request.get("yuyuebianhao"));

        post.setYuyueren(Request.get("yuyueren"));

        post.setXingming(Request.get("xingming"));

        post.setAnpaizixunshi(Request.get("anpaizixunshi"));

        post.setZixunriqi(Request.get("zixunriqi"));

        post.setKaishishijian(Request.get("kaishishijian"));

        post.setJieshushijian(Request.get("jieshushijian"));

        post.setDidian(Request.get("didian"));

        post.setJiean(Request.get("jiean"));

        post.setChufangyuyueid(Request.getInt("chufangyuyueid"));



        String where=" didian='"+Request.get("didian")+"' and zixunriqi='"+Request.get("zixunriqi")+"' and ";
        where+="kaishishijian<='"+Request.get("kaishishijian")+"' and '"+Request.get("kaishishijian")+"'>=jieshushijian and ";

        where+="kaishishijian<='"+Request.get("jieshushijian")+"' and '"+Request.get("jieshushijian")+"'>=jieshushijian ";

        Long sl=Query.make("anpaizixun").where(where).where("anpaizixunshi",Request.get("anpaizixunshi")).where("jiean='否'").count();
        if(sl>0){
            return showSuccess("该咨询师已有安排，当前不能安排", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
        }









        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/anpaizixunupdate")
    public String update() {
        // 创建实体类
        Anpaizixun post = new Anpaizixun();
        // 将前台表单数据填充到实体类
        if (!Request.get("chufangyuyueid").equals("")) post.setChufangyuyueid(Request.getInt("chufangyuyueid"));
        if (!Request.get("yuyuebianhao").equals("")) post.setYuyuebianhao(Request.get("yuyuebianhao"));
        if (!Request.get("yuyueren").equals("")) post.setYuyueren(Request.get("yuyueren"));
        if (!Request.get("xingming").equals("")) post.setXingming(Request.get("xingming"));
        if (!Request.get("anpaizixunshi").equals("")) post.setAnpaizixunshi(Request.get("anpaizixunshi"));
        if (!Request.get("zixunriqi").equals("")) post.setZixunriqi(Request.get("zixunriqi"));
        if (!Request.get("kaishishijian").equals("")) post.setKaishishijian(Request.get("kaishishijian"));
        if (!Request.get("jieshushijian").equals("")) post.setJieshushijian(Request.get("jieshushijian"));
        if (!Request.get("didian").equals("")) post.setDidian(Request.get("didian"));
        if (!Request.get("jiean").equals("")) post.setJiean(Request.get("jiean"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/anpaizixun_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Anpaizixun map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "anpaizixun_detail"; // 详情页面：WebRoot\anpaizixun_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/anpaizixun_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("anpaizixun").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
