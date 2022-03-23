<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>

<script src="js/jquery.validate.js"></script>
<script>
    window.searchSelectUrl = "selectUpdateSearch.do";
    window.selectUpdateUrl = "tableAjax.do?a=table";
</script>
<script src="js/selectUpdate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px" class="admin-content">
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="panel panel-default">
            <div class="panel-heading">编辑值班信息:</div>
            <div class="panel-body">
                <form action="zhibanxinxiupdate.do" method="post" name="form1" id="form1">
                    <!-- form 标签开始 -->

                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">配置对象</label>
                            <div class="col-sm-10">
                                <div class="form-inline">
                                    <select
                                        class="form-control"
                                        data-fields="gonghao,zhiwei,xingming"
                                        data-value="${Info.html(mmm.peizhiduixiang)}"
                                        id="peizhiduixiang"
                                        name="peizhiduixiang"
                                        onchange="getAjaxData('yuangong',this,this.value)"
                                    >
                                        <option value="">请选择配置对象</option>
                                    </select>
                                    关键词：<input type="text" class="form-control" id="peizhiduixiang_keyword" value="" />
                                    <select class="form-control class_zhiwei_search25" data-value="" id="zhiwei_search" name="zhiwei_search">
                                        <option value="">请选择</option>
                                        <option value="咨询师">咨询师</option>
                                        <option value="初访员">初访员</option>
                                    </select>
                                    <button type="button" class="btn btn-default" onclick="peizhiduixiang_select_update()">搜索</button>
                                    <script>
                                        function peizhiduixiang_select_update() {
                                            var keyword = $("#peizhiduixiang_keyword").val();
                                            var where = {};
                                            if ($("#zhiwei_search").val() != "") where.zhiwei = $("#zhiwei_search").val();
                                            searchSelect("peizhiduixiang", "yuangong", keyword, where, "gonghao,zhiwei,xingming".split(","), "".split(","));
                                        }
                                        peizhiduixiang_select_update();
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">工号</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control select-update"
                                    placeholder="输入工号"
                                    style="width: 150px"
                                    id="gonghao"
                                    name="gonghao"
                                    value="${Info.html(mmm.gonghao)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">职位</label>
                            <div class="col-sm-10">
                                <select class="form-control select-update" data-value="${Info.html(mmm.zhiwei)}" id="zhiwei" name="zhiwei" style="width: 250px">
                                    <option value="咨询师">咨询师</option>
                                    <option value="初访员">初访员</option>
                                </select>
                                <script>
                                    $(".class_zhiwei26 select-update").val($(".class_zhiwei26 select-update").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control select-update"
                                    placeholder="输入姓名"
                                    style="width: 150px"
                                    id="xingming"
                                    name="xingming"
                                    value="${Info.html(mmm.xingming)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">星期几<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <select
                                    class="form-control class_xingqiji27"
                                    data-value="${Info.html(mmm.xingqiji)}"
                                    data-rule-required="true"
                                    data-msg-required="请填写星期几"
                                    id="xingqiji"
                                    name="xingqiji"
                                    style="width: 250px"
                                >
                                    <option value="星期一">星期一</option>
                                    <option value="星期二">星期二</option>
                                    <option value="星期三">星期三</option>
                                    <option value="星期四">星期四</option>
                                    <option value="星期五">星期五</option>
                                    <option value="星期六">星期六</option>
                                    <option value="星期日">星期日</option>
                                </select>
                                <script>
                                    $(".class_xingqiji27").val($(".class_xingqiji27").attr("data-value"));
                                </script>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">可预约时间始<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    onfocus="WdatePicker({dateFmt:'HH:mm',lang:'zh-cn'})"
                                    style="width: 120px"
                                    data-rule-required="true"
                                    data-msg-required="请填写可预约时间始"
                                    id="keyuyueshijianshi"
                                    name="keyuyueshijianshi"
                                    readonly="readonly"
                                    value="${Info.html(mmm.keyuyueshijianshi)}"
                                />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <label style="text-align: right" class="col-sm-2 hiddex-xs">可预约时间止<span style="color: red">*</span></label>
                            <div class="col-sm-10">
                                <input
                                    type="text"
                                    class="form-control"
                                    onfocus="WdatePicker({dateFmt:'HH:mm',lang:'zh-cn'})"
                                    style="width: 120px"
                                    data-rule-required="true"
                                    data-msg-required="请填写可预约时间止"
                                    id="keyuyueshijianzhi"
                                    name="keyuyueshijianzhi"
                                    readonly="readonly"
                                    value="${Info.html(mmm.keyuyueshijianzhi)}"
                                />
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

