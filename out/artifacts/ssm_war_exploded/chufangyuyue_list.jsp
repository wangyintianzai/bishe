<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name"> 初访预约 </span>
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

                        <input type="text" class="form-control" style="" name="yuyueren" value="${param.yuyueren}"/>
                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}"/>
                    </div>
                    <div class="form-group">
                        状态

                        <select class="form-control class_zhuangtai28" data-value="${param.zhuangtai}" id="zhuangtai"
                                name="zhuangtai">
                            <option value="">请选择</option>
                            <option value="待审核">待审核</option>
                            <option value="审核失败">审核失败</option>
                            <option value="审核通过">审核通过</option>
                            <option value="已安排初访">已安排初访</option>
                        </select>
                        <script>
                            $(".class_zhuangtai28").val($(".class_zhuangtai28").attr("data-value"));
                        </script>
                    </div>
                    <div class="form-group">
                        初访结论

                        <select class="form-control class_chufangjielun29" data-value="${param.chufangjielun}"
                                id="chufangjielun" name="chufangjielun">
                            <option value="">请选择</option>
                            <option value="无需咨询">无需咨询</option>
                            <option value="安排咨询">安排咨询</option>
                            <option value="转介送诊">转介送诊</option>
                        </select>
                        <script>
                            $(".class_chufangjielun29").val($(".class_chufangjielun29").attr("data-value"));
                        </script>
                    </div>
                    <select class="form-control" name="order" id="orderby">
                        <option value="id">按发布时间</option>
                        <option value="zongdefen">按总得分</option>
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
                        <th>性别</th>
                        <th>手机</th>
                        <th>班级</th>
                        <th>总得分 (问卷得分)</th>
                        <th>状态</th>
                        <th>初访结论</th>
                        <th>添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"
                    ><c:set var="i" value="${i+1}"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label> ${i} </label>
                            </td>
                            <td>${map.yuyuebianhao}</td>
                            <td>${map.yuyueren}</td>
                            <td>${map.xingming}</td>
                            <td>${map.xingbie}</td>
                            <td>${map.shouji}</td>
                            <td>${map.banji}</td>
                            <td>${map.zongdefen}</td>
                            <td>${map.zhuangtai}</td>
                            <td>${map.chufangjielun}</td>
                            <td>${Info.subStr(map.addtime , 19 , "")}</td>
                            <td align="center">

                                <a href="kaoshijieguo_list.do?chufangyuyueid=${map.id}">查询问卷答题结果</a><br>


                                <c:if test="${map.zhuangtai=='待审核'}">
                                <a href="chufangyuyueshenhe_add.do?id=${map.id}">审核</a>
                                </c:if>

                                <c:if test="${map.zhuangtai=='审核通过'}">
                                <a href="chufangjielun_add.do?id=${map.id}">添加初访结论</a><br>
                                </c:if>

                                <c:if test="${map.chufangjielun=='安排咨询'}">
                                <a href="anpaizixun_add.do?id=${map.id}">安排咨询</a><br>
                                </c:if>

                                <c:if test="${sessionScope.cx=='管理员'}">
                                    <a href="chufangyuyue_updt.do?id=${map.id}">编辑</a>

                                    <a href="chufangyuyue_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
                                </c:if>






                                <!--qiatnalijne-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <%@ include file="/page.jsp" %>

            <p>总得分平均值: ${total.avg_zongdefen} 　　 总得分最小值: ${total.min_zongdefen} 　　 总得分最大值: ${total.max_zongdefen} 　　</p>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

