<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 初访结论 </span>
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
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}" />
                    </div>
                    <div class="form-group">
                        初访员

                        <select
                            class="form-control class_chufangyuan46"
                            data-value="${param.chufangyuan}"
                            data-rule-required="true"
                            data-msg-required="请填写初访员"
                            id="chufangyuan"
                            name="chufangyuan"
                        >
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM yuangong ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.gonghao}">${m.xingming}</option>
                            </c:forEach>
                        </select>
                        <script>
                            $(".class_chufangyuan46").val($(".class_chufangyuan46").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        危机等级

                        <select
                            class="form-control class_weijidengji47"
                            data-value="${param.weijidengji}"
                            data-rule-required="true"
                            data-msg-required="请填写危机等级"
                            id="weijidengji"
                            name="weijidengji"
                        >
                            <option value="">请选择</option>
                            <option value="一级">一级</option>
                            <option value="二级">二级</option>
                            <option value="三级">三级</option>
                        </select>
                        <script>
                            $(".class_weijidengji47").val($(".class_weijidengji47").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        问题类型

                        <input type="text" class="form-control" style="" name="wentileixing" value="${param.wentileixing}" />
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
                            <th>姓名</th>
                            <th>总得分 (问卷得分)</th>
                            <th>初访员</th>
                            <th>危机等级</th>
                            <th>问题类型</th>
                            <th>初访时间</th>
                            <th>初访结论</th>
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
                                <td>${map.xingming}</td>
                                <td>${map.zongdefen}</td>
                                <td>
                                    <ssm:sql var="mapyuangong5" type="find">SELECT xingming,id FROM yuangong where gonghao='${map.chufangyuan}'</ssm:sql>${mapyuangong5.xingming}
                                </td>
                                <td>${map.weijidengji}</td>
                                <td>${map.wentileixing}</td>
                                <td>${map.chufangshijian}</td>
                                <td>${map.chufangjielun}</td>
                                <td>${Info.subStr(map.addtime , 19 , "")}</td>
                                <td align="center">
                                    <a href="chufangjielun_detail.do?id=${map.id}">详情</a>

                                    <a href="chufangjielun_updt.do?id=${map.id}">编辑</a>

                                    <a href="chufangjielun_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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

