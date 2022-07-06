<%--흑흑흑--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/png">
<%@include file="script.jsp"%>

</head>
<body>
<div class="preloader">
    <div class="loader">
        <div class="ytp-spinner">
            <div class="ytp-spinner-container">
                <div class="ytp-spinner-rotator">
                    <div class="ytp-spinner-left">
                        <div class="ytp-spinner-circle"></div>
                    </div>
                    <div class="ytp-spinner-right">
                        <div class="ytp-spinner-circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--====== PRELOADER PART ENDS ======-->

<!--====== HEADER PART START ======-->

<header class="header_area">
    <div id="header_navbar" class="header_navbar sticky">
        <div class="container position-relative">
            <div class="row align-items-center">
                <div class="col-xl-12">
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="main">
                            <img id="logo" src="${pageContext.request.contextPath}/resources/images/logo/header_logo.png" alt="Logo">
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav">
                                <li class="nav-item">
                                    <a class="page-scroll" href="main">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="page-scroll" data-toggle="collapse" data-target="#sub-nav1" aria-controls="sub-nav1"
                                       aria-expanded="false" aria-label="Toggle navigation" href="javascript:void(0)">소식
                                        <div class="sub-nav-toggler">
                                            <span></span>
                                        </div>
                                    </a>
                                    <ul class="sub-menu collapse" id="sub-nav1">
                                        <li><a href="notice">- 공지사항</a></li>
                                        <li><a href="faq">- FAQ</a></li>
                                        <li><a href="sponsorschedule">- 후원 일정</a></li>
                                        <li><a href="donationreport">- 기부 현황</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="page-scroll" data-toggle="collapse" data-target="#sub-nav" aria-controls="sub-nav"
                                       aria-expanded="false" aria-label="Toggle navigation" href="javascript:void(0)">후원
                                        <div class="sub-nav-toggler">
                                            <span></span>
                                        </div>
                                    </a>
                                    <ul class="sub-menu collapse" id="sub-nav2">
                                        <li><a href="donation">- 후원하기</a></li>
                                        <li><a href="livedonation">- 현장 기부</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="page-scroll" data-toggle="collapse" data-target="#sub-nav" aria-controls="sub-nav"
                                       aria-expanded="false" aria-label="Toggle navigation" href="javascript:void(0)">랭킹
                                        <div class="sub-nav-toggler">
                                            <span></span>
                                        </div>
                                    </a>
                                    <ul class="sub-menu collapse" id="sub-nav3">
                                        <li><a href="privaterank">- 개인</a></li>
                                        <li><a href="companyrank">- 기업</a></li>
                                    </ul>
                                </li>
                                <%--검색 폼--%>
                                <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                                    <div class="input-group">
                                        <input class="form-control" id="keyword" type="text" placeholder="Search for" aria-label="Search for..." aria-describedby="btnNavbarSearch"

                                        style="border-radius: 10px;"/>
                                        <label for="keyword" style="background-color: #FFFFFF"><a href="#" class="lni lni-search-alt theme-color" style="margin: 2px;"></a></label>

                                    </div>
                                </form>
                                <%
                                    String seid;
                                    if(session.getAttribute("id") == null) {
                                        seid = "로그인을 해주세요";
                                    } else {

                                        seid = (String) session.getAttribute("name") + "("+session.getAttribute("id") +")"+  "님 환영합니다.";
                                    }
                                %>
                                <label><%=seid%></label>
                            </ul>
                        </div>
                        <ul class="header-btn d-md-flex" style="margin-bottom: 0">
                            <li>
                                <a href="#" class="main-btn account-btn">
                                    <span class="d-md-none"><i class="lni lni-user"></i></span>
                                    <span class="d-none d-md-block">내 계정</span>
                                </a>
                                <ul class="dropdown-nav">
                                    <%
                                        if(session.getAttribute("id") == null)
                                        {
                                    %>
                                    <li><a href="login">로그인</a></li>
                                    <li><a href="registerselect">회원가입</a></li>
                                    <%

                                        } else {
                                            %>
                                    <li><a href="logout">로그아웃</a></li>

                                    <li><a href="mypage">내정보</a></li>
                                    <%
                                        }
                                    %>

                                    <%
                                        if(session.getAttribute("adminflag").equals("1"))
                                        {
                                    %>
                                    <li><a href="admin">어드민</a></li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </li>
                        </ul>
                    </nav> <!-- navbar -->
                </div>
            </div> <!-- row -->
        </div> <!-- container -->
    </div> <!-- header navbar -->
</header>
<!--====== HEADER PART ENDS ======-->

