<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 初访预约审核 </span>
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
                        预约人

                        <input type="text" class="form-control" style="" name="yuyueren" value="${param.yuyueren}" />
                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}" />
                    </div>
                    <div class="form-group">
                        审核结果

                        <select
                            class="form-control class_shenhejieguo43"
                            data-value="${param.shenhejieguo}"
                            data-rule-required="true"
                            data-msg-required="请填写审核结果"
                            id="shenhejieguo"
                            name="shenhejieguo"
                        >
                            <option value="">请选择</option>
                            <option value="审核失败">审核失败</option>
                            <option value="审核通过">审核通过</option>
                        </select>
                        <script>
                            $(".class_shenhejieguo43").val($(".class_shenhejieguo43").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        备注

                        <input type="text" class="form-control" id="beizhu" name="beizhu" value="${param.beizhu}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="zongdefen">按总得分</option>
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
                            <th>预约编号</th>
                            <th>预约人</th>
                            <th>姓名</th>
                            <th>总得分 (问卷得分)</th>
                            <th>审核结果</th>
                            <th>备注</th>
                            <th>审核人</th>
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
                                <td>${map.yuyuebianhao}</td>
                                <td>${map.yuyueren}</td>
                                <td>${map.xingming}</td>
                                <td>${map.zongdefen}</td>
                                <td>${map.shenhejieguo}</td>
                                <td>${map.beizhu}</td>
                                <td>${map.shenheren}</td>
                                <td align="center">
                                    <a href="chufangyuyueshenhe_updt.do?id=${map.id}">编辑</a>

                                    <a href="chufangyuyueshenhe_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

