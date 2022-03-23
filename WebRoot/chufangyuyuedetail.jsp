<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*"
         pageEncoding="UTF-8" %>
<%@ page import="com.alibaba.fastjson.JSONArray" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" %>


<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>



<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div>
            <div class="common-title" style="margin-top: 4em">
                <p>
                    <i></i>
                    <i></i>
                </p>
            </div>
            <div class="news_show">
                <span class="show_t"> ${map.xingming} </span>
                <span class="fa_time"> 预约人:${map.yuyueren}    预约编号:${map.yuyuebianhao}    性别:${map.xingbie}    班级:${map.banji}    添加时间:${map.addtime}    </span>

            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">完成问卷</h3>
            <div class="sidebar-widget-body">












                <%--考试代码--%>






                <!-- 开始代码开始 -->
                <link rel="stylesheet" href="js/layer/theme/default/layer.css">
                <script src="js/layer/layer.js"></script>
                <script src="js/paper.js"></script>
                <style>
                    #zhangjielianxi {
                        padding: 20px;
                        background: #f2f2f2;
                    }

                    #zhangjielianxi div {
                        padding: 20px;
                    }

                    #zhangjielianxi div h3 {
                        margin-bottom: 8px;
                    }
                    .shuxiang #zhangjielianxi .daan label{
                        display: block;
                    }
                    .tiku-message-zhengque,.tiku-message-jiexi{
                        padding: 10px;
                        padding-left: 100px;
                        margin-top: 10px;
                        background: #cdcdcd;

                        display: none;
                    }
                    .tiku-message-zhengque:before{
                        content: '正确答案：';
                        display: inline;
                        float: left;
                    }
                    .tiku-message-jiexi:before{
                        content: "解析：";
                        display: inline;
                        float: left;
                    }
                </style>
                    <% Map map = Query.make("chufangyuyue").where("id", request.getParameter("id")).find(); %>

                <%List<HashMap> wenda=null;

                    // LIMIT 题目数
                    int id =Request.getInt("id");
                    wenda = Query.make("timu").where("leixing" ,"单选题").order("rand()").limit(5).select();
                    wenda.addAll(Query.make("timu").where("leixing" ,"多选题").order("rand()").limit(5).select());


                %>
                <div id="shijuan"></div>
                <script>
                    window.isKaoshi = false;
                    (function (){

                        new paper('#shijuan' , {
                            list:<%=JSONArray.toJSONString(wenda)%>,
                            daan:'daan',//设置答案字段
                            leixing:'leixing', // 设置类型字段
                            danxuanti:'单选题',  // 设置单选类型
                            duoxuanti:'多选题',  // 设置多选类型
                            biaoti:'biaoti',    // 设置标题字段
                            isShuxiang:true, // false 横向摆放、true 一行一个选项
                            // jiexi:'daanjieshi', // 设置解析字段 没有就去掉
                         /*   zhengquedaan:'zhengquedaan', // 设置正确答案字段*/
                            //kaoshishichang:<%= map.get("kaoshishizhang") %>, // 设置考试时长，没有则去掉
                            isRequired:true, // 是否所有的题目都要选择后才可以提交
                            submit:function (result,zongdefen,leixingdefen,time){
                                var index = layer.load(0, {
                                    shade: [0.5, '#000'] //0.1透明度的白色背景
                                });
                                //设置提交问卷答题结果地址
                                $.post("jiaojuan_insert.jsp?f=f", {
                                    JSON: JSON.stringify(result),
                                    zongdefen:zongdefen,
                                    leixingdefen:JSON.stringify(leixingdefen),
                                    time:time,
                                    id:<%=request.getParameter("id")%>
                                }, function (res) {
                                    layer.close(index);
                                    var re = eval("(" + res + ")");
                                    if (re.code == 0) {
                                        layer.alert("提交成功", function () {
                                            window.isKaoshi = false;
                                            //设置提交完成后跳转地址
                                            location.href = 'index.do';
                                        });
                                    } else {
                                        layer.alert(re.msg);
                                    }

                                });
                            }
                        });
                        window.addEventListener('beforeunload', function (e) {
                            if (window.isKaoshi) {
                                var confirmationMessage = '你当前正在考试，确定离开？';
                                (e || window.event).returnValue = confirmationMessage; // 兼容 Gecko + IE
                                return confirmationMessage; // 兼容 Gecko + Webkit, Safari, Chrome
                            }
                        })
                    })();
                </script>
                <!-- 开始代码结束 -->













            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>

