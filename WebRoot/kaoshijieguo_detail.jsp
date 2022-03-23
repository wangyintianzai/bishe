<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>


<div style="padding: 10px" class="admin-content">
    <div class="panel panel-default">
        <div class="panel-heading">问卷答题结果详情</div>
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
                <div class="detail detail-text">
                    <div class="detail-title">字母：</div>
                    <div class="detail-content">${map.zimu}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">预约人：</div>
                    <div class="detail-content">${map.yuyueren}</div>
                </div>
                <div class="detail detail-textuser">
                    <div class="detail-title">问卷人：</div>
                    <div class="detail-content">${map.wenjuanren}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">标题：</div>
                    <div class="detail-content">${map.biaoti}</div>
                </div>
                <div class="detail detail-textarea">
                    <div class="detail-title">答案：</div>
                    <div class="detail-content">${map.daan}</div>
                </div>
                <div class="detail detail-select">
                    <div class="detail-title">类型：</div>
                    <div class="detail-content">${map.leixing}</div>
                </div>
                <div class="detail detail-number">
                    <div class="detail-title">得分：</div>
                    <div class="detail-content">${map.defen}</div>
                </div>
                <div class="detail detail-autotime">
                    <div class="detail-title">添加时间：</div>
                    <div class="detail-content">${map.addtime}</div>
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

