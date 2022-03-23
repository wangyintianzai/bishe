<%@ page language="java" import="com.spring.util.*,java.util.*,com.jntoo.db.*,com.jntoo.db.utils.*" pageEncoding="UTF-8" %>
 <%@ taglib prefix="ssm" uri="http://ssm" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="head.jsp" %>
 <%@ include file="header.jsp" %>


<link rel="stylesheet" href="js/swiper/swiper.css" />
<script src="js/swiper/swiper.js"></script>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        ${bhtList = Query.make("lunbotu").order("id desc").limit(5).select();""}

        <div class="swiper-container" id="base/banner27">
            <div class="swiper-wrapper">
                <c:forEach items="${bhtList}" var="bht">
                    <div class="swiper-slide">
                        <div class="decoimg_b2">
                            <a class="btn btn-" href="${bht.url}" style="background-image: url('${bht.image}'); height: 480px"></a>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <!-- 如果需要分页器 -->
            <div class="swiper-pagination"></div>
            <!-- 如果需要导航按钮 -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>

        <script>
            var mySwiper = new Swiper("#base/banner27", {
                loop: true, // 循环模式选项
                autoplay: {
                    delay: 3000,
                    disableOnInteraction: false,
                },
                // 如果需要分页器
                pagination: {
                    el: ".swiper-pagination",
                },
                // 如果需要前进后退按钮
                navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                },
                // 如果需要滚动条
                /*scrollbar: {
            el: '.swiper-scrollbar',
        },*/
            });
        </script>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="section-dianzi">
            <div class="section_title">
                <h2>
                    <span>咨询师</span>
                </h2>
            </div>
            <div class="section_content">
                <div class="heng-bx=ox">
                    ${yuangonglist33 = Query.make("yuangong").where("zhiwei='咨询师'").limit(4).order("id desc").select();""}
                    <div class="row c1_list">
                        <div class="heng_box_2">
                            <c:forEach items="${yuangonglist33}" var="r">
                                <div class="col-md-3 item">
                                    <div class="img-box pb70">
                                        <div href="javascript:;" class="img" style="background-image: url('${r.touxiang}')"></div>
                                    </div>
                                    <a href="yuangongdetail.do?id=${r.id}" class="c1_titleText">${r.xingming}</a>
                                    <div class="c1_desc">${Info.subStr(r.shanchanglingyu, 30)}</div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<div>
    <div class="container">
        <!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

        <div class="section-dianzi">
            <div class="section_title">
                <h2>
                    <span>公告</span>
                </h2>
            </div>
            <div class="section_content">
                <div class="">
                    ${xinwenlist38 = Query.make("xinwen").limit(4).order("id desc").select();""}
                    <div class="news-list">
                        <ul>
                            <c:forEach items="${xinwenlist38}" var="r">
                                <li class="clearfix">
                                    <a href="xinwendetail.do?id=${r.id}">
                                        <div class="thumb">
                                            <div class="img-box pb100">
                                                <div class="img" style="background-image: url('${r.tupian}')"></div>
                                            </div>
                                        </div>
                                    </a>

                                    <div class="news-content-text">
                                        <a href="xinwendetail.do?id=${r.id}">
                                            <h3>${r.biaoti}</h3>
                                        </a>
                                        <div class="description">${Info.subStr(r.neirong, 80)}</div>
                                        <div class="other-content">
                                            <span>添加时间：${Info.subStr(r.addtime , 19 , "")}</span>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- container定宽，并剧中结束 -->
    </div>
</div>

<%@ include file="footer.jsp" %>
 <%@ include file="foot.jsp" %>

