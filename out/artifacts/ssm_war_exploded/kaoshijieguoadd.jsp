<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>

<script src="js/jquery.validate.js"></script>

<div class="container">
    <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">添加问卷答题结果:</div>
        <div class="panel-body">
            <form action="kaoshijieguoinsert.do" method="post" name="form1" id="form1">
                <!-- form 标签开始 -->

                <input type="hidden" name="chufangyuyueid" value="${param.id}" />
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">预约编号</label>
                        <div class="col-sm-10">${readMap.yuyuebianhao}<input type="hidden" id="yuyuebianhao" name="yuyuebianhao" value="${Info.html(readMap.yuyuebianhao)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">预约人</label>
                        <div class="col-sm-10">${readMap.yuyueren}<input type="hidden" id="yuyueren" name="yuyueren" value="${Info.html(readMap.yuyueren)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
                        <div class="col-sm-10">${readMap.xingming}<input type="hidden" id="xingming" name="xingming" value="${Info.html(readMap.xingming)}" /></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">标题</label>
                        <div class="col-sm-10">
                            <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入标题" id="biaoti" name="biaoti"></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">类型</label>
                        <div class="col-sm-10">
                            <select class="form-control class_leixing42" data-value="" id="leixing" name="leixing" style="width: 250px">
                                <option value="单选题">单选题</option>
                                <option value="多选题">多选题</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">答案<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <textarea
                                style="width: 80%; height: 120px"
                                class="form-control"
                                placeholder="输入答案"
                                data-rule-required="true"
                                data-msg-required="请填写答案"
                                id="daan"
                                name="daan"
                            ></textarea>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">得分<span style="color: red">*</span></label>
                        <div class="col-sm-10">
                            <input
                                type="number"
                                class="form-control"
                                placeholder="输入得分"
                                style="width: 150px"
                                data-rule-required="true"
                                data-msg-required="请填写得分"
                                number="true"
                                data-msg-number="输入一个有效数字"
                                id="defen"
                                name="defen"
                                value=""
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">字母</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" placeholder="输入字母" style="width: 150px" id="zimu" name="zimu" value="" />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs">问卷人</label>
                        <div class="col-sm-10">
                            <input
                                type="text"
                                class="form-control"
                                placeholder="输入问卷人"
                                style="width: 150px"
                                readonly="readonly"
                                id="wenjuanren"
                                name="wenjuanren"
                                value="${sessionScope.username}"
                            />
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="row">
                        <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                        <div class="col-sm-10">
                            <input name="referer" id="referers" class="referers" value="<%=request.getHeader("referer") %>" type="hidden" />
                            <script>
                                $(function () {
                                    $("input.referers").val(document.referrer);
                                });
                            </script>

                            <button type="submit" class="btn btn-primary" name="Submit">提交</button>
                            <button type="reset" class="btn btn-default" name="Submit2">重置</button>
                        </div>
                    </div>
                </div>

                <!--form标签结束-->
            </form>
        </div>
    </div>

    <!-- container定宽，并剧中结束 -->
</div>

<script>
    $(function () {
        $("#form1").validate();
    });
</script>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

