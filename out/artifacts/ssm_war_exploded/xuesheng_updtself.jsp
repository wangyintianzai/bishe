<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css" />
<script src="js/layer/layer.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑学生:</div>
            <div class="panel-body">
                <form action="xueshengupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">学号<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                        readonly="readonly"
                                    type="text"
                                    class="form-control"
                                    placeholder="输入学号"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写学号"
                                    remote="checkno.do?checktype=update&id=${mmm.id}&table=xuesheng&col=xuehao"
                                    data-msg-remote="内容重复了"
                                    id="xuehao"
                                    name="xuehao"
                                    value="${Info.html(mmm.xuehao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">头像</label>
                            <div class="col-sm-10">
                                <div class="input-group" style="width: 250px">
                                    <input type="text" class="form-control" id="touxiang" name="touxiang" value="${Info.html(mmm.touxiang)}" />

                                    <span class="input-group-btn"
                                        ><button
                                            type="button"
                                            class="btn btn-default"
                                            onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=touxiang'})"
                                        >
                                            上传图片
                                        </button></span
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    placeholder="输入姓名"
                                    style="width: 150px"
                                    data-rule-required="true"
                                    data-msg-required="请填写姓名"
                                    id="xingming"
                                    name="xingming"
                                    value="${Info.html(mmm.xingming)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">性别<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_xingbie12"
                                    data-value="${Info.html(mmm.xingbie)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写性别"
                                    id="xingbie"
                                    name="xingbie"
                                    style="width: 250px"
                                >
                                    <option value="男">男</option>
                                    <option value="女">女</option>
                                </select>
                                <script>
                                    $(".class_xingbie12").val($(".class_xingbie12").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">手机</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入手机" style="width: 150px" id="shouji" name="shouji" value="${Info.html(mmm.shouji)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">学院</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入学院" style="width: 250px" id="xueyuan" name="xueyuan" value="${Info.html(mmm.xueyuan)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">班级</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" placeholder="输入班级" style="width: 250px" id="banji" name="banji" value="${Info.html(mmm.banji)}" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs"> </label>
                            <div class="col-sm-10">
                                <input name="id" value="${mmm.id}" type="hidden" />
                                <input name="referer" value="?" type="hidden" />
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

