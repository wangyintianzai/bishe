<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="initial-scale=1.0,maximum-scale=1.0,user-scalable=no" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="msapplication-tap-highlight" content="no" />
        <title>高校学生心理辅导系统-后台管理</title>

        <!-- uikit -->
        <link rel="stylesheet" href="assets/js/uikit/css/uikit.almost-flat.min.css" />

        <!-- altair admin login page -->
        <link rel="stylesheet" href="assets/css/login_page.min.css" />
        <script>
            function submitForm(form) {
                var username = $(form).find("#login_username").val();
                var password = $(form).find("#login_password").val();
                var pagerandom = $(form).find("#pagerandom");

                if ($.trim(username) == "") {
                    $("#error").html("请输入账号").css("visibility", "inherit");
                    return false;
                }
                if ($.trim(password) == "") {
                    $("#error").html("请输入密码").css("visibility", "inherit");
                    return false;
                }
                if ($.trim(pagerandom) == "") {
                    $("#error").html("请输入验证码").css("visibility", "inherit");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body class="login_page">
        <div class="login_page_wrapper">
            <div class="md-card" id="login_card">
                <div class="md-card-content large-padding" id="login_form">
                    <div class="login_heading" style="font-size: 16px">高校学生心理辅导系统</div>
                    <form action="authAdminLogin.do?a=a" method="post" onsubmit="return submitForm(this)">
                        <div class="uk-form-row">
                            <label for="login_username">用户名</label>
                            <input class="md-input" type="text" id="login_username" name="username" />
                        </div>
                        <div class="uk-form-row">
                            <label for="login_password">密码</label>
                            <input class="md-input" type="password" id="login_password" name="pwd" />
                        </div>
                        <div class="uk-form-row pagerandom">
                            <label for="pagerandom">验证码</label>
                            <input class="md-input" type="text" id="pagerandom" name="pagerandom" />
                            <img
                                class=""
                                alt="刷新验证码"
                                title="点击刷新验证码"
                                onClick="this.src='captcha.do?time='+new Date().getTime();"
                                src="captcha.do"
                                style="width: 60px; height: 30px; max-width: 60px; max-height: 30px"
                            />
                        </div>
                        <div class="uk-form-row">
                            <label for="guanliyuan">权限</label>
                            <select class="md-input" name="cx" id="guanliyuan" style="padding-left: 50px">
                                <option value="管理员">管理员</option>
                            </select>
                        </div>
                        <div class="uk-margin-medium-top">
                            <button type="submit" class="md-btn md-btn-primary md-btn-block md-btn-large">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <!-- common functions -->
        <script src="assets/js/common.min.js"></script>
        <!-- altair core functions -->
        <script src="assets/js/altair_admin_common.min.js"></script>

        <!-- altair login page functions -->
        <script src="assets/js/pages/login.min.js"></script>
    </body>
</html>
