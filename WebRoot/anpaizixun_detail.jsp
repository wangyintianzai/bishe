<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">安排咨询详情</div>
        <div class="panel-body">
            <div class="admin-detail clearfix">
                <div class="detail detail-readmodule">
                    <div class="detail-title">初访预约id：</div>
                    <div class="detail-content">${map.chufangyuyueid}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">预约编号：</div>
                    <div class="detail-content">${map.yuyuebianhao}</div>
                </div>
                <div class="detail detail-text">
                    <div class="detail-title">姓名：</div>
                    <div class="detail-content">${map.xingming}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">预约人：</div>
                    <div class="detail-content">${map.yuyueren}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">安排咨询师：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapyuangong12" type="find">SELECT xingming,id FROM yuangong where gonghao='${map.anpaizixunshi}'</ssm:sql>${mapyuangong12.xingming}
                    </div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">地点：</div>
                    <div class="detail-content">
                        <ssm:sql var="mapdidian13" type="find">SELECT didianmingcheng,id FROM didian where id='${map.didian}'</ssm:sql>${mapdidian13.didianmingcheng}
                    </div>
                </div>
                <div class="detail detail-date">
                    <div class="detail-title">咨询日期：</div>
                    <div class="detail-content">${map.zixunriqi}</div>
                </div>
                <div class="detail detail-time">
                    <div class="detail-title">开始时间：</div>
                    <div class="detail-content">${map.kaishishijian}</div>
                </div>
                <div class="detail detail-time">
                    <div class="detail-title">结束时间：</div>
                    <div class="detail-content">${map.jieshushijian}</div>
                </div>
                <div class="detail detail-whether">
                    <div class="detail-title">结案：</div>
                    <div class="detail-content">${map.jiean}</div>
                </div>
            </div>

            <div class="button-list mt10">
                <div class="">
                    <button type="button" class="btn btn-default" onclick="history.go(-1);">返回</button>
                    <button type="button" class="btn btn-default" onclick="window.print()">打印本页</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="foot.jsp" %>

