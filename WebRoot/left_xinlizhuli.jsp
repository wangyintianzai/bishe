<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">个人中心</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="admins_updtself.do" target="main">
                <i class="fa fa-eye"></i>
                修改个人资料
            </a>
        </li>
        <li>
            <a class="submenu" href="mod.do" target="main">
                <i class="fa fa-eye"></i>
                修改密码
            </a>
        </li>
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">初防预约管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="chufangyuyue_list.do" target="main">
                <i class="fa fa-eye"></i>
                初防预约查询
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
    </ul>
</li>

<li>
    <a href="javascript:;">
        <span class="menu_icon"><i class="material-icons">&#xE871;</i></span>
        <span class="menu_title">安排咨询管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="anpaizixun_list.do" target="main">
                <i class="fa fa-eye"></i>
                安排咨询查询
            </a>
        </li>
    </ul>
</li>
