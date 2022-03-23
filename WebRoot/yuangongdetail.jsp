<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>

<link rel="stylesheet" href="js/swiper/swiper.css" />
<script src="js/swiper/swiper.js"></script>
<script src="js/jquery.validate.js"></script>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="">
            <div class="goods-info clearfix">
                <div class="gallery-list">
                    <div class="swiper-container gallery-top" id="shangpin-galler">
                        <div class="swiper-wrapper"></div>
                    </div>

                </div>
                <div class="goods-right-content">
                    <h3 class="title">${map.xingming}</h3>
                    <div class="descount">
                        <div>
                            <span class="name"> 工号： </span>
                            <span class="val"> ${map.gonghao} </span>
                        </div>
                        <div>
                            <span class="name"> 职位： </span>
                            <span class="val"> ${map.zhiwei} </span>
                        </div>
                        <div>
                            <span class="name"> 性别： </span>
                            <span class="val"> ${map.xingbie} </span>
                        </div>
                        <div>
                            <span class="name"> 擅长领域： </span>
                            <span class="val"> ${map.shanchanglingyu} </span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="goods-content">${map.jieshao}</div>

            <script>
                (function () {
                    var images = "${map.touxiang}".split(",");
                    if (images.length > 0) {
                        for (var i = 0; i < images.length; i++) {
                            var path = images[i];
                            var src = '<div class="swiper-slide"><div class="img-box pb100"><div class="img" style="background-image: url(' + path + ')"></div></div></div>';
                            $("#shangpin-galler .swiper-wrapper").append(src);
                            $("#shangpin-thumb .swiper-wrapper").append(src);
                        }

                        var thumbsSwiper = new Swiper("#shangpin-thumb", {
                            spaceBetween: 10,
                            slidesPerView: 4,
                            watchSlidesVisibility: true, //防止不可点击
                        });
                        var gallerySwiper = new Swiper("#shangpin-galler", {
                            spaceBetween: 10,
                            thumbs: {
                                swiper: thumbsSwiper,
                            },
                        });
                    }
                })();
            </script>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="title-modelbox-widget">
            <h3 class="section-title">可预约时间</h3>
            <div class="sidebar-widget-body">
                <div class="list-table">
                   <%-- ${zhibanxinxilist18 = Query.make("zhibanxinxi").where("gonghao",map.gonghao).limit(1000).order("id desc").select()}--%>
                        <ssm:sql var="zhibanxinxilist18"
                                 type="select">SELECT * FROM zhibanxinxi where gonghao='${map.gonghao}' ORDER BY id desc</ssm:sql>
                    <table width="100%" border="1" class="table table-list table-bordered table-hover">
                        <thead>
                            <tr align="center">
                                <th width="60" align="center" bgcolor="CCFFFF">序号</th>
                                <th>星期几</th>
                                <th>可预约时间始</th>
                                <th>可预约时间止</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="i" value="0" /><c:forEach items="${zhibanxinxilist18}" var="r"
                                ><c:set var="i" value="${i+1}" />
                                <tr>
                                    <td width="30" align="center">${i}</td>
                                    <td>${r.xingqiji}</td>
                                    <td>${r.keyuyueshijianshi}</td>
                                    <td>${r.keyuyueshijianzhi}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- /.sidebar-widget-body -->
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

