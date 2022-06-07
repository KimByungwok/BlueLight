<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
    <!--====== donationdetails css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationdetails.css">
</head>
<body>

<h1 style="text-align: center;">후원하기</h1><br>

<div class="container">
    <section class="mypage_sidebar">
        <%--사이드 메뉴--%>
        <article class="mypage_list">
            <ul>
                <li><a href="main">메인화면</a></li>
                <li><a href="donation">후원하기</a></li>
                <li><a href="livedonation">현장기부</a></li>
            </ul>
        </article>
        <%--후원하기 헤더--%>
        <article class="noticeheader">
            <span class="donationname">우크라이나 전쟁 후원</span>
            <span class="donationdate">2022.05.25 ~ 2022.12.30</span><hr>
            <!-- 게시글  -->
            <article class="noticemiddle">
                <div>
                    <div class="single-product">
                        <div class="product-img">
                            <a href="donation1">
                                <img src="${pageContext.request.contextPath}/resources/images/product/donationimg1.jpg" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <div>
                    <h3>할무니 도와됴,,,</h3>
                    <span>설명이</span><br>
                    <span>어쩌구</span><br>
                    <span>저쩌구</span><br>
                    <span>아무튼 기부나 좀 해라 불쌍하지도 않냐 이놈들아</span>
                </div>
                <br>
                <div style="display: flex; justify-content: flex-end;">
                    <a href="donation1payment"><button class="btn-outline-primary btn-lg" style="margin: 2px;">후원하기</button></a>
                    <a href="livedonation1payment"><button class="btn-outline-success btn-lg" style="margin: 2px;">현장후원</button></a>
                    <a href="donation"><button class="btn-outline-dark btn-lg" style="margin: 2px;">목록</button></a>
                </div>
            </article>
        </article>
    </section>
</div>

<%@include file="../footer.jsp"%>
</body>
</html>
