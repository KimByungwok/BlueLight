<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="com.spring.ex.dto.DonationDTO" %>

<html>
<head>
    <%@include file="header.jsp" %><br><br><br><br>
</head>
<body>

<%--슬라이드 캐러셀 start--%>
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
        <hr>
    </div>
</section>
<br>
<%--슬라이드 캐러셀 end--%>


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

<%--기부 금액 및 인원 start--%>
<section class="donationinfomation">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center;">
                <a href="privaterank"><h3>오늘의 후원 금액 </h3></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th style="text-align: center;">{&java} 원</th>
                    </tr>
                    </thead>
                </table>
                <br>
            </div>
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center;">
                <a href="companyrank"><h3>오늘의 후원자</h3></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th style="text-align: center;">{&java} 명</th>
                    </tr>
                    </thead>
                </table>
                <br>
            </div>
        </div>
        <hr>
    </div>
</section>
<br>
<%--기부 금액 및 인원 end--%>

<%--기부 메뉴 이미지 start--%>
<%--기부 메뉴 이미지 start--%>
<section class="menu image">
    <div class="container">
        <div class="row">
            <c:forEach items="${list}" var="DonationDTO" varStatus="status">

                <div class="col-xl-4 col-lg-6 col-md-6">
                    <div class="single-product">
                        <div class="product-img">
                            <a href='donation?dId=<c:out value="${DonationDTO.m_dId}"/>'/>
                            <img width="370px" height="210px" src='${pageContext.request.contextPath}/resources/donationUploadImg/<c:out value="${DonationDTO.m_dId}" />/<c:out value="${DonationDTO.m_dId}"/>'/>
                            </a>
                        </div>
                        <div class="product-content">
                            <h5 class="name"><a href='donationView?dId=<c:out value="${DonationDTO.m_dId}"/>'/><c:out value="${DonationDTO.m_dTitle}"/></h5>
                            <ul class="address">
                                <li>
                                    <a href='donationView?dId=<c:out value="${DonationDTO.m_dId}"/>'><i class="lni lni-calendar"></i>시작 : <c:out value="${DonationDTO.m_ddayStart}"/></a>
                                    <a href='donationView?dId=<c:out value="${DonationDTO.m_dId}"/>'> ~ 종료 : <c:out value="${DonationDTO.m_ddayEnd}"/></a>
                                </li>
                            </ul>
                            <div class="product-bottom">
                                <a href='donationView?dId=<c:out value="${DonationDTO.m_dId}"/>'>
                                    <button class="btn btn-dark btn-lg">후원하기</button>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<%--기부 메뉴 이미지 end--%>
<%--기부 메뉴 이미지 end--%>


<%--푸터 위에 리스트 2칸씩 떄려넣어주세용 시작이에오--%>
<section class="lanking">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center;">
                <a href="privaterank"><h1>개인 랭킹</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th style="width: 50px;">순위</th>
                        <th>이름</th>
                        <th>금액</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="width: 50px;">번호가 어쩌구</td>
                        <td>이름 어쩌구</td>
                        <td>금액 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center;">
                <a href="companyrank"><h1>기업 랭킹</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th style="width: 50px;">순위</th>
                        <th>기업 이름</th>
                        <th>금액</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="width: 50px;">번호가 어쩌구</td>
                        <td>이름 어쩌구</td>
                        <td>금액 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
        </div>
        <hr>
    </div>
</section>
<%--푸터 위에 리스트 2칸씩 떄려넣어주세용--%>
<section class="faq">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center;">
                <a href="notice"><h1>공지사항</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th style="width: 50px;">글번호</th>
                        <th>글제목</th>
                        <th>등록시간</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="width: 50px;">번호가 어쩌구</td>
                        <td>제목이 어쩌구</td>
                        <td>시간 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
            <div class="col-xl-6 col-6 col-sm-6" style="text-align: center;">
                <a href="faq"><h1>FAQ</h1></a>
                <!-- 게시글  -->
                <table class="container">
                    <thead>
                    <tr>
                        <th style="width: 50px;">글번호</th>
                        <th>글제목</th>
                        <th>등록시간</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="width: 50px;">번호가 어쩌구</td>
                        <td>제목이 어쩌구</td>
                        <td>시간 어쩌구</td>
                    </tr>
                    </tbody>
                </table>
                <br>
            </div>
        </div>
    </div>
</section>
<%--푸터 위에 리스트 2칸씩 떄려넣어주세용 끝입니당--%>
<%--푸터--%>
<%@include file="footer.jsp" %>
</body>
</html>