<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">账号管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="admins_list.do" target="main">
                <i class="fa fa-eye"></i>
                管理员账号管理
            </a>
        </li>
        <li>
            <a class="submenu" href="admins_add.do" target="main">
                <i class="fa fa-eye"></i>
                管理员账号添加
            </a>
        </li>
        <li>
            <a class="submenu" href="mod.do" target="main">
                <i class="fa fa-eye"></i>
                密码修改
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">新闻管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="xinwenfenlei_add.do" target="main">
                <i class="fa fa-eye"></i>
                分类添加
            </a>
        </li>
        <li>
            <a class="submenu" href="xinwenfenlei_list.do" target="main">
                <i class="fa fa-eye"></i>
                分类查询
            </a>
        </li>
        <li>
            <a class="submenu" href="xinwen_add.do" target="main">
                <i class="fa fa-eye"></i>
                新闻添加
            </a>
        </li>
        <li>
            <a class="submenu" href="xinwen_list.do" target="main">
                <i class="fa fa-eye"></i>
                新闻查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">系统管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="lunbotu_add.do" target="main">
                <i class="fa fa-eye"></i>
                轮播图添加
            </a>
        </li>
        <li>
            <a class="submenu" href="lunbotu_list.do" target="main">
                <i class="fa fa-eye"></i>
                轮播图查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">学生管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="xuesheng_add.do" target="main">
                <i class="fa fa-eye"></i>
                学生添加
            </a>
        </li>
        <li>
            <a class="submenu" href="xuesheng_list.do" target="main">
                <i class="fa fa-eye"></i>
                学生查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">咨询师管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="yuangong_add.do" target="main">
                <i class="fa fa-eye"></i>
                咨询师添加
            </a>
        </li>
        <li>
            <a class="submenu" href="yuangong_list.do" target="main">
                <i class="fa fa-eye"></i>
                咨询师查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">值班信息管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="zhibanxinxi_add.do" target="main">
                <i class="fa fa-eye"></i>
                值班信息添加
            </a>
        </li>
        <li>
            <a class="submenu" href="zhibanxinxi_list.do" target="main">
                <i class="fa fa-eye"></i>
                值班信息查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">初访预约管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="chufangyuyue_list.do" target="main">
                <i class="fa fa-eye"></i>
                初访预约查询
            </a>
        </li>
        <li>
            <a class="submenu" href="chufangyuyueshenhe_list.do" target="main">
                <i class="fa fa-eye"></i>
                初防预约审核查询
            </a>
        </li>
        <li>
            <a class="submenu" href="chufangjielun_list.do" target="main">
                <i class="fa fa-eye"></i>
                初访结论查询
            </a>
        </li>
        <li>
            <a class="submenu" href="anpaizixun_list.do" target="main">
                <i class="fa fa-eye"></i>
                安排咨询查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">问卷管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="timu_add.do" target="main">
                <i class="fa fa-eye"></i>
                试题添加
            </a>
        </li>
        <li>
            <a class="submenu" href="timu_list.do" target="main">
                <i class="fa fa-eye"></i>
                试题查询
            </a>
        </li>
        <li>
            <a class="submenu" href="kaoshijieguo_list.do" target="main">
                <i class="fa fa-eye"></i>
                问卷答题结果查询
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">地点管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="didian_add.do" target="main">
                <i class="fa fa-eye"></i>
                地点添加
            </a>
        </li>
        <li>
            <a class="submenu" href="didian_list.do" target="main">
                <i class="fa fa-eye"></i>
                地点查询
            </a>
        </li>
    </ul>
</li>
