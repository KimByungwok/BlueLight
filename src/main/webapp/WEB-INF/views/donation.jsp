<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
    <%@include file="header.jsp"%><br><br><br><br>
    <!--====== qudwok_style css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

</head>
<body>

<div class="container">
    <div class="row">
        <h1>후원하기</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="donation">후원하기</a></li>
                    <li><a href="livedonation">현장기부</a></li>
                    <li><a href="donationWrite?bd=donationWrite">글쓰기</a></li>
                </ul>
            </article>
                <%--기부 메뉴 이미지 start--%>
                <section class="menu image">
                    <div class="container">
                        <div class="row">
                            <%--1번 메인 기부 이미지--%>
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="donation1">
                                            <img src="${pageContext.request.contextPath}/resources/images/product/donationimg1.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="name"><a href="donation1">우크라이나 전쟁</a></h5>
                                        <ul class="address">
                                            <li>
                                                <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                                <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                            </li>
                                        </ul>
                                        <div class="product-bottom">
                                            <a href="donation1">
                                                <button class="btn btn-dark btn-lg">후원하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--2번 메인 기부 이미지--%>
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="donation1">
                                            <img src="${pageContext.request.contextPath}/resources/images/product/lives.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="name"><a href="donation1">혼자사는 어르신을 위하여</a></h5>
                                        <ul class="address">
                                            <li>
                                                <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                                <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                            </li>
                                        </ul>
                                        <div class="product-bottom">
                                            <a href="donation1">
                                                <button class="btn btn-dark btn-lg">후원하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--3번 메인 기부 이미지--%>
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="donation1">
                                            <img src="${pageContext.request.contextPath}/resources/images/product/age.png"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="name"><a href="donation1">베네수엘라 이주민</a></h5>
                                        <ul class="address">
                                            <li>
                                                <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                                <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                            </li>
                                        </ul>
                                        <div class="product-bottom">
                                            <a href="donation1">
                                                <button class="btn btn-dark btn-lg">후원하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--4번 메인 기부 이미지--%>
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="donation1">
                                            <img src="${pageContext.request.contextPath}/resources/images/product/eat.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="name"><a href="donation1">아동학대 아이들에게</a></h5>
                                        <ul class="address">
                                            <li>
                                                <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                                <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                            </li>
                                        </ul>
                                        <div class="product-bottom">
                                            <a href="donation1">
                                                <button class="btn btn-dark btn-lg">후원하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--5번 메인 기부 이미지--%>
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="donation1">
                                            <img src="${pageContext.request.contextPath}/resources/images/product/water.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="name"><a href="donation1">아프리카 주민을 위해</a></h5>
                                        <ul class="address">
                                            <li>
                                                <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                                <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                            </li>
                                        </ul>
                                        <div class="product-bottom">
                                            <a href="donation1">
                                                <button class="btn btn-dark btn-lg">후원하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--6번 메인 기부 이미지--%>
                            <div class="col-xl-4 col-lg-6 col-md-6">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="donation1">
                                            <img src="${pageContext.request.contextPath}/resources/images/product/so.jpg"
                                                 alt="">
                                        </a>
                                    </div>
                                    <div class="product-content">
                                        <h5 class="name"><a href="donation1">형제의 나라 에티오피아</a></h5>
                                        <ul class="address">
                                            <li>
                                                <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                                <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                            </li>
                                        </ul>
                                        <div class="product-bottom">
                                            <a href="donation1">
                                                <button class="btn btn-dark btn-lg">후원하기</button>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%-- 메인 기부 이미지 end--%>
                    </div>
                </section>
                <%--기부 메뉴 이미지 end--%>
        </section>
    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

