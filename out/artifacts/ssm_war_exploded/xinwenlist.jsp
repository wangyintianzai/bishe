<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div style="margin: 20px 0 0 0">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="">
            <div class="news-list">
                <ul>
                    <c:forEach items="${list}" var="r">
                        <li class="clearfix">
                            <a href="xinwendetail.do?id=${r.id}">
                                <div class="thumb">
                                    <div class="img-box pb100">
                                        <div class="img" style="background-image: url('${r.tupian}')"></div>
                                    </div>
                                </div>
                            </a>

                            <div class="news-content-text">
                                <a href="xinwendetail.do?id=${r.id}">
                                    <h3>${r.biaoti}</h3>
                                </a>
                                <div class="description">${Info.subStr(r.neirong, 80)}</div>
                                <div class="other-content">
                                    <span>添加人：${r.tianjiaren}</span>
                                    <span>点击率：${r.dianjilv}</span>
                                    <span
                                        >分类：<ssm:sql var="mapxinwenfenlei3" type="find">SELECT fenleimingcheng,id FROM xinwenfenlei where id='${r.fenlei}'</ssm:sql
                                        >${mapxinwenfenlei3.fenleimingcheng}</span
                                    >
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <%@ include file="/page.jsp" %>

        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

