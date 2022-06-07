<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<body>
<!DOCTYPE html>
<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>
</head>
<body>

<%--슬라이드 캐러셀--%>
<section id="slider">
    <div class="container">
        <div id="demo" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>
            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="${pageContext.request.contextPath}/resources/images/slidebanner/slide1.jpg"
                         alt="Los Angeles" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/resources/images/slidebanner/slide2.jpg"
                         alt="Los Angeles" class="d-block" style="width:100%">
                </div>
                <div class="carousel-item">
                    <img src="${pageContext.request.contextPath}/resources/images/slidebanner/slide3.jpg"
                         alt="Los Angeles" class="d-block" style="width:100%">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
</section>
<br><br><br><br>

<%--검색바 form--%>
<%--
<div class="search-area">
    <div class="container">
        <div class="search-wrapper">
            <form action="#">
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-sm-10 col-10">
                        <div class="search-input">
                            <label for="keyword"><a href="#" class="lni lni-search-alt theme-color"></a></label>
                            <input type="text" name="keyword" id="keyword" placeholder="검색내용을 입력하세요">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
--%>

<%--기부 금액 및 인원--%>
<br>
<section class=money>
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center; border: 1px solid gray;">
                <h2>오늘의 후원 금액</h2><br>
                <h4><%--<%= //값 %>--%> {$java} 원</h4>
            </div>
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center; border: 1px solid gray;">
                <h2>오늘의 기부 인원</h2><br>
                <h4><%--<%= //값%>--%> {$java} 명</h4>
            </div>
        </div>
    </div>
</section>
<br>

<%--기부 메뉴 이미지--%>
<section class="menu image">
    <div class="container">
        <div class="row">
            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="single-product">
                    <div class="product-img">
                        <a href="product-details.html">
                            <img src="${pageContext.request.contextPath}/resources/images/product/donationimg1.jpg"
                                 alt="">
                        </a>
                        <%--즐찾 또는 장바구니 모양 이미지--%>
                        <div class="product-action">
                            <a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
                            <a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
                        </div>
                    </div>

                    <div class="product-content">
                        <h3 class="name"><a href="#">우크라이나 전쟁 기부</a></h3>
                        <span class="update">Last Update: {$ java} </span>
                        <ul class="address">
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-calendar"></i> ~ 2023.01.05</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-map-marker"></i> 우크라이나</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="lni lni-user"></i> 전쟁 피해자</a>
                            </li>
                        </ul>
                        <div class="product-bottom">
                            <h3 class="price">10,000 ~ </h3>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="single-product">
                    <div class="product-img">
                        <a href="product-details.html">
                            <img src="${pageContext.request.contextPath}/resources/images/product/l-product-2.jpg"
                                 alt="">
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
                            <a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i>
                                Verified Ad</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="single-product">
                    <div class="product-img">
                        <a href="product-details.html">
                            <img src="${pageContext.request.contextPath}/resources/images/product/l-product-3.jpg"
                                 alt="">
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
                            <img src="${pageContext.request.contextPath}/resources/images/product/l-product-4.jpg"
                                 alt="">
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
                            <a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i>
                                Verified Ad</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-4 col-lg-6 col-md-6">
                <div class="single-product">
                    <div class="product-img">
                        <a href="product-details.html">
                            <img src="${pageContext.request.contextPath}/resources/images/product/l-product-5.jpg"
                                 alt="">
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
                            <img src="${pageContext.request.contextPath}/resources/images/product/l-product-6.jpg"
                                 alt="">
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
                            <a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i>
                                Verified Ad</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!--====== LATEST PRODUCT PART ENDS ======-->

<section class="lanking">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center; border: 1px solid gray;">
                <a href="privaterank"><h1>개인 랭킹</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th>순위</th>
                        <th>이름</th>
                        <th>금액</th>
                        <th>기부 시간</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>번호가 어쩌구</td>
                        <td>이름 어쩌구</td>
                        <td>금액 어쩌구</td>
                        <td>시간 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center; border: 1px solid gray;">
                <a href="companyrank"><h1>기업 랭킹</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th>순위</th>
                        <th>기업 이름</th>
                        <th>금액</th>
                        <th>기부 시간</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>번호가 어쩌구</td>
                        <td>이름 어쩌구</td>
                        <td>금액 어쩌구</td>
                        <td>시간 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
        </div>
    </div>
</section>

<section class="faq">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center; border: 1px solid gray;">
                <a href="notice"><h1>공지사항</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th>글번호</th>
                        <th>글제목</th>
                        <th>작성자</th>
                        <th>등록시간</th>
                        <th>조회수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>번호가 어쩌구</td>
                        <td>제목이 어쩌구</td>
                        <td>작성자 어쩌구</td>
                        <td>시간 어쩌구</td>
                        <td>조회수 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center; border: 1px solid gray;">
                <a href="privaterank"><h1>FAQ</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th>글번호</th>
                        <th>글제목</th>
                        <th>작성자</th>
                        <th>등록시간</th>
                        <th>조회수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>번호가 어쩌구</td>
                        <td>제목이 어쩌구</td>
                        <td>작성자 어쩌구</td>
                        <td>시간 어쩌구</td>
                        <td>조회수 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
        </div>
    </div>
</section>


<%--푸터--%>
<%@include file="footer.jsp" %>
</body>
</html>


