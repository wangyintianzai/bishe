<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑初访结论:</div>
            <div class="panel-body">
                <form action="chufangjielunupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <input type="hidden" name="chufangyuyueid" value="${mmm.chufangyuyueid}" />
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">预约编号</label>
                            <div class="col-sm-10">${mmm.yuyuebianhao}<input type="hidden" id="yuyuebianhao" name="yuyuebianhao" value="${Info.html(mmm.yuyuebianhao)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">预约人</label>
                            <div class="col-sm-10">${mmm.yuyueren}<input type="hidden" id="yuyueren" name="yuyueren" value="${Info.html(mmm.yuyueren)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
                            <div class="col-sm-10">${mmm.xingming}<input type="hidden" id="xingming" name="xingming" value="${Info.html(mmm.xingming)}" /></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">初访员<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_chufangyuan53"
                                    data-value="${Info.html(mmm.chufangyuan)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写初访员"
                                    id="chufangyuan"
                                    name="chufangyuan"
                                    style="width: 250px"
                                >
                                    <ssm:sql var="select" type="select">SELECT * FROM yuangong ORDER BY id desc</ssm:sql>
                                    <c:forEach items="${select}" var="m">
                                        <option value="${m.gonghao}">${m.xingming}</option>
                                    </c:forEach>
                                </select>
                                <script>
                                    $(".class_chufangyuan53").val($(".class_chufangyuan53").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">危机等级<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_weijidengji54"
                                    data-value="${Info.html(mmm.weijidengji)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写危机等级"
                                    id="weijidengji"
                                    name="weijidengji"
                                    style="width: 250px"
                                >
                                    <option value="一级">一级</option>
                                    <option value="二级">二级</option>
                                    <option value="三级">三级</option>
                                </select>
                                <script>
                                    $(".class_weijidengji54").val($(".class_weijidengji54").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">问题类型<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入问题类型"
                                    style="width: 250px"
                                    data-rule-required="true"
                                    data-msg-required="请填写问题类型"
                                    id="wentileixing"
                                    name="wentileixing"
                                    value="${Info.html(mmm.wentileixing)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">初访时间</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})"
                                    style="width: 200px"
                                    id="chufangshijian"
                                    name="chufangshijian"
                                    readonly="readonly"
                                    value="${Info.html(mmm.chufangshijian)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">初访结论<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_chufangjielun55"
                                    data-value="${Info.html(mmm.chufangjielun)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写初访结论"
                                    id="chufangjielun"
                                    name="chufangjielun"
                                    style="width: 250px"
                                >
                                    <option value="无需咨询">无需咨询</option>
                                    <option value="安排咨询">安排咨询</option>
                                    <option value="转介送诊">转介送诊</option>
                                </select>
                                <script>
                                    $(".class_chufangjielun55").val($(".class_chufangjielun55").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">备注</label>
                            <div class="col-sm-10">
                                <textarea style="width: 80%; height: 120px" class="form-control" placeholder="输入备注" id="beizhu" name="beizhu">
${Info.html(mmm.beizhu)}</textarea
                                >
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="${mmm.id}" type="hidden" />
                                <input name="referer" value="<%=request.getHeader("referer") %>" type="hidden" />
                                <input name="updtself" value="${updtself}" type="hidden" />

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
</div>
<%@ include file="foot.jsp" %>

