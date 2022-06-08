<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:42
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
        <h1>현장기부</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="donation">후원하기</a></li>
                    <li><a href="livedonation">현장기부</a></li>
                </ul>
            </article>
            <%--현장 기부 메뉴 이미지--%>
            <section class="menu image">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="donation1">
                                        <img src="${pageContext.request.contextPath}/resources/images/product/donationimg1.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3 class="name"><a href="donation1">우크라이나 전쟁</a></h3>
                                    <ul class="address">
                                        <li>
                                            <a href="donation1"><i class="lni lni-calendar"></i>시작 : 2022.05.25</a>
                                            <a href="donation1"> ~ 종료 : 2022.12.30</a>
                                        </li>
                                    </ul>
                                    <div class="product-bottom">
                                        <a href="donation1"><button class="btn btn-dark btn-lg">후원하기</button> </a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/resources/images/product/l-product-2.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                                    </div>
                                </div>

                                <div class="product-content">
                                    <h3 class="name"><a href="product-details.html">Apple MacBook Air</a></h3>
                                    <span class="update">Last Update: 5 hours ago</span>
                                    <ul class="address">
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
                                        </li>
                                    </ul>

                                    <div class="product-bottom">
                                        <h3 class="price">$420.99</h3>
                                        <a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i> Verified Ad</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/resources/images/product/l-product-3.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                                    </div>
                                </div>

                                <div class="product-content">
                                    <h3 class="name"><a href="product-details.html">Cctv camera</a></h3>
                                    <span class="update">Last Update: 5 hours ago</span>
                                    <ul class="address">
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
                                        </li>
                                    </ul>
                                    <div class="product-bottom">
                                        <h3 class="price">$80.99</h3>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/resources/images/product/l-product-4.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                                    </div>
                                </div>

                                <div class="product-content">
                                    <h3 class="name"><a href="product-details.html">Apple's new iMac</a></h3>
                                    <span class="update">Last Update: 5 hours ago</span>
                                    <ul class="address">
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
                                        </li>
                                    </ul>
                                    <div class="product-bottom">
                                        <h3 class="price">$3000.99</h3>
                                        <a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i> Verified Ad</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/resources/images/product/l-product-5.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                                    </div>
                                </div>

                                <div class="product-content">
                                    <h3 class="name"><a href="product-details.html">Best Compact DSLR</a></h3>
                                    <span class="update">Last Update: 5 hours ago</span>
                                    <ul class="address">
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
                                        </li>
                                    </ul>
                                    <div class="product-bottom">
                                        <h3 class="price">$290.99</h3>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xl-4 col-lg-6 col-md-6">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="${pageContext.request.contextPath}/resources/images/product/l-product-6.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                                        <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                                    </div>
                                </div>

                                <div class="product-content">
                                    <h3 class="name"><a href="product-details.html">10 Future Concept Cars</a></h3>
                                    <span class="update">Last Update: 5 hours ago</span>
                                    <ul class="address">
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
                                        </li>
                                    </ul>
                                    <div class="product-bottom">
                                        <h3 class="price">$4520.99</h3>
                                        <a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i> Verified Ad</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

