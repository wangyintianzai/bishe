<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="heng-bx=ox">
            <div style="margin-bottom: 20px">
                <form action="?" class="search">
                    <table class="jd-search">
                        <tbody>
                            <tr>
                                <td class="label1">姓名</td>
                                <td class="form-inline">
                                    <input type="text" class="form-control" style="width: 150px" name="xingming" value="${param.xingming}" placeholder="请输入关键词" />
                                    <button type="submit" class="btn btn-default">搜索</button>
                                </td>
                            </tr>

                            <tr>
                                <td class="label1">性别</td>
                                <td class="form-inline">
                                    <p class="search-radio">
                                        <input type="hidden" name="xingbie" value="${param.xingbie}" />
                                        <a href="javascript:;" data-value="" onclick="selectRadio(this)">全部</a>
                                        <a href="javascript:;" data-value="男" onclick="selectRadio(this)">男</a>
                                        <a href="javascript:;" data-value="女" onclick="selectRadio(this)">女</a>
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
            <div class="row c1_list">
                <div class="heng_box_2">
                    <c:forEach items="${list}" var="r">
                        <div class="col-md-3 item">
                            <div class="img-box pb70">
                                <div href="javascript:;" class="img" style="background-image: url('${r.touxiang}')"></div>
                            </div>
                            <a href="yuangongdetail.do?id=${r.id}" class="c1_titleText">${r.xingming}</a>
                            <div class="c1_desc">${Info.subStr(r.shanchanglingyu, 30)}</div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <%@ include file="/page.jsp" %>

        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

