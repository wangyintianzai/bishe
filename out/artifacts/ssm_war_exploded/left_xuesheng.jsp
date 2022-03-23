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
            <a class="submenu" href="xuesheng_updtself.do" target="main">
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
        <span class="menu_title">我的预约管理</span>
    </a>
    <ul>
        <li>
            <a class="submenu" href="chufangyuyue_list_yuyueren.do" target="main">
                <i class="fa fa-eye"></i>
                我的预约查询
            </a>
        </li>
        <li>
            <a class="submenu" href="chufangjielun_list_yuyueren.do" target="main">
                <i class="fa fa-eye"></i>
                初访结论查询
            </a>
        </li>
        <li>
            <a class="submenu" href="anpaizixun_list_yuyueren.do" target="main">
                <i class="fa fa-eye"></i>
                咨询安排查询
            </a>
        </li>
    </ul>
</li>
