<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="news-info">
            <h3 class="title">${map.biaoti}</h3>
            <div class="descount">
                <span class="title">
                    分类：
                    <ssm:sql var="mapxinwenfenlei4" type="find">SELECT fenleimingcheng,id FROM xinwenfenlei where id='${map.fenlei}'</ssm:sql>${mapxinwenfenlei4.fenleimingcheng}
                </span>
                <span class="title"> 点击率： ${map.dianjilv} </span>
                <span class="title"> 添加人： ${map.tianjiaren} </span>
            </div>
            <div class="content">${map.neirong}</div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

