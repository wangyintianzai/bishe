<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 问卷答题结果 </span>
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
                        标题

                        <input type="text" class="form-control" id="biaoti" name="biaoti" value="${param.biaoti}" />
                    </div>
                    <div class="form-group">
                        类型

                        <select class="form-control class_leixing39" data-value="${param.leixing}" id="leixing" name="leixing">
                            <option value="">请选择</option>
                            <option value="单选题">单选题</option>
                            <option value="多选题">多选题</option>
                        </select>
                        <script>
                            $(".class_leixing39").val($(".class_leixing39").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        问卷人

                        <input type="text" class="form-control" style="" name="wenjuanren" value="${param.wenjuanren}" />
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
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
                            <th>预约编号</th>
                            <th>预约人</th>
                            <th>姓名</th>
                            <th>标题</th>
                            <th>类型</th>
                            <th>答案</th>
                            <th>得分</th>
                            <th>字母</th>
                            <th>问卷人</th>
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
                                <td>${map.yuyuebianhao}</td>
                                <td>${map.yuyueren}</td>
                                <td>${map.xingming}</td>
                                <td>${map.biaoti}</td>
                                <td>${map.leixing}</td>
                                <td>${map.daan}</td>
                                <td>${map.defen}</td>
                                <td>${map.zimu}</td>
                                <td>${map.wenjuanren}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td align="center">
                                    <a href="kaoshijieguo_detail.do?id=${map.id}">详情</a>

                                    <a href="kaoshijieguo_updt.do?id=${map.id}">编辑</a>

                                    <a href="kaoshijieguo_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

