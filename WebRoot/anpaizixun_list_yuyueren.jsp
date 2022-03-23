<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 安排咨询 </span>
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
                        安排咨询师

                        <select
                            class="form-control class_anpaizixunshi59"
                            data-value="${param.anpaizixunshi}"
                            data-rule-required="true"
                            data-msg-required="请填写安排咨询师"
                            id="anpaizixunshi"
                            name="anpaizixunshi"
                        >
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM yuangong ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.gonghao}">${m.xingming}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_anpaizixunshi59").val($(".class_anpaizixunshi59").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        开始时间

                        <input type="text" class="form-control" name="kaishishijian_start" readonly="readonly" onfocus="WdatePicker({dateFmt:'HH:mm',lang:'zh-cn'})" />-<input
                            type="text"
                            class="form-control"
                            name="kaishishijian_end"
                            readonly="readonly"
                            onfocus="WdatePicker({dateFmt:'HH:mm',lang:'zh-cn'})"
                        />
                    </div>
                    <div class="form-group">
                        地点

                        <select class="form-control class_didian60" data-value="${param.didian}" data-rule-required="true" data-msg-required="请填写地点" id="didian" name="didian">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM didian ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.didianmingcheng}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_didian60").val($(".class_didian60").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        结案

                        <select class="form-control class_jiean61" data-value="${param.jiean}" id="jiean" name="jiean">
                            <option value="">请选择</option>
                            <option value="是">是</option>
                            <option value="否">否</option>
                        </select>
                        <script>
                            $(".class_jiean61").val($(".class_jiean61").attr("data-value"));
                        </script>
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
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
                            <th>安排咨询师</th>
                            <th>咨询日期</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>地点</th>
                            <th>结案</th>
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
                                <td>
                                    <ssm:sql var="mapyuangong10" type="find">SELECT xingming,id FROM yuangong where gonghao='${map.anpaizixunshi}'</ssm:sql
                                    >${mapyuangong10.xingming}
                                </td>
                                <td>${map.zixunriqi}</td>
                                <td>${map.kaishishijian}</td>
                                <td>${map.jieshushijian}</td>
                                <td>
                                    <ssm:sql var="mapdidian11" type="find">SELECT didianmingcheng,id FROM didian where id='${map.didian}'</ssm:sql>${mapdidian11.didianmingcheng}
                                </td>
                                <td>${map.jiean}</td>
                                <td align="center">
                                    <a href="anpaizixun_detail.do?id=${map.id}">详情</a>


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

