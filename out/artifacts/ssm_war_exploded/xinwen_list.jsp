<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 新闻 </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <i class="glyphicon glyphicon-search"></i>
                    </div>

                    <div class="form-group">
                        标题

                        <input type="text" class="form-control" style="" name="biaoti" value="${param.biaoti}" />
                    </div>
                    <div class="form-group">
                        分类

                        <select class="form-control class_fenlei8" data-value="${param.fenlei}" data-rule-required="true" data-msg-required="请填写分类" id="fenlei" name="fenlei">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM xinwenfenlei ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.fenleimingcheng}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_fenlei8").val($(".class_fenlei8").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        添加人

                        <input type="text" class="form-control" style="" name="tianjiaren" value="${param.tianjiaren}" />
                    </div>
                    <div class="form-group">内容</div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="dianjilv">按点击率</option>
                        <option value="addtime">按添加时间</option>
                    </select>
                    <select class="form-control" name="sort" id="sort">
                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>
                    </select>
                    <script>
                        $("#orderby").val("${orderby}");
                        $("#sort").val("${sort}");
                    </script>
                    <button type="submit" class="btn btn-default">搜索</button>

                    <!--form标签结束-->
                </form>
            </div>

            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                        <tr align="center">
                            <th width="60" data-field="item">序号</th>
                            <th>标题</th>
                            <th>分类</th>
                            <th>图片</th>
                            <th>添加人</th>
                            <th>点击率</th>
                            <th>添加时间</th>
                            <th width="220" data-field="handler">操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="i" value="0" /><c:forEach items="${list}" var="map"
                            ><c:set var="i" value="${i+1}" />
                            <tr id="${map.id}" pid="">
                                <td width="30" align="center">
                                    <label> ${i} </label>
                                </td>
                                <td>${map.biaoti}</td>
                                <td>
                                    <ssm:sql var="mapxinwenfenlei2" type="find">SELECT fenleimingcheng,id FROM xinwenfenlei where id='${map.fenlei}'</ssm:sql
                                    >${mapxinwenfenlei2.fenleimingcheng}
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${'' == map.tupian }"> -</c:when><c:otherwise><img width="100" src="${map.tupian}" /></c:otherwise
                                    ></c:choose>
                                </td>
                                <td>${map.tianjiaren}</td>
                                <td>${map.dianjilv}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td align="center">
                                    <a href="xinwen_updt.do?id=${map.id}">编辑</a>

                                    <a href="xinwen_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                    <!--qiatnalijne-->
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <%@ include file="/page.jsp" %>

        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

