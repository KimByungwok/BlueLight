<%--흑흑흑--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationreport.css">
    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/png">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-5.1.3.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--====== Title ======-->
    <title>푸른빛</title>
    <meta name="description" content="">

    <!--====== Favicon Icon ======-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/png">

    <!--====== Animate CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">

    <!--====== Tiny slider CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tiny-slider.css">

    <!--====== glightbox CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/glightbox.min.css">

    <!--====== Line Icons CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/LineIcons.2.0.css">

    <!--====== Selectr CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/selectr.css">

    <!--====== Nouislider CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nouislider.css">

    <%--캐러셀 하얀색 원인;;--%>
    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-5.0.5-alpha.min.css">

    <!--====== notice_style css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

    <!--====== donationdetails css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationdetails.css">

    <!--====== donationreport css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationreport.css">

    <!--====== validation css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/validation.css">

    <!--====== mypage css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">


    <!--====== BACK TOP TOP PART START ======-->
    <a href="#" class="back-to-top btn-hover"><i class="lni lni-chevron-up"></i></a>
    <!--====== BACK TOP TOP PART ENDS ======-->

    <!--====== Bootstrap js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle-5.0.0.alpha-min.js"></script>

    <!--====== Tiny slider js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/tiny-slider.js"></script>

    <!--====== wow js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>

    <!--====== glightbox js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/glightbox.min.js"></script>

    <!--====== Selectr js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/selectr.min.js"></script>

    <!--====== Nouislider js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/nouislider.js"></script>

    <!--====== Main js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

    <!--====== checkbox js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/checkbox.js"></script>

    <!--====== chart js ======-->
    <script src="${pageContext.request.contextPath}/resources/js/chart.js"></script>

    <%-- carousel js --%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <!--====== carousel css ======-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" >

    <%--랭킹 차트 JS 퍼온거--%>
    <!--====== Bootstrap CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstarp-4.3.1.min.css">
    <%--href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 캐러셀 버벅임 원인;;--%>
    <link rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

    <script>

        //========= glightbox
        const myGallery = GLightbox({
            'href': 'assets/video/Free App Landing Page Template - AppLand.mp4',
            'type': 'video',
            'source': 'youtube', //vimeo, youtube or local
            'width': 900,
            'autoplayVideos': true,
        });

        //======== tiny slider for feature-product-carousel
        tns({
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 20,
            nav: false,
            controls: true,
            controlsPosition: 'bottom',
            controlsText: [
                '<span class="prev"><i class="lni lni-chevron-left"></i></span>',
                '<span class="next"><i class="lni lni-chevron-right"></i></span>'
            ],
            container: ".feature-product-carousel",
            items: 1,
            center: false,
            autoplayTimeout: 5000,
            swipeAngle: false,
            speed: 400,
            responsive: {
                768: {
                    items: 2,
                },

                992: {
                    items: 2,
                },

                1200: {
                    items: 3,
                }
            }
        });

        //======== tiny slider for testimonial
        tns({
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 20,
            nav: true,
            controls: false,
            container: ".testimonial-carousel",
            items: 1,
            center: false,
            autoplayTimeout: 5000,
            swipeAngle: false,
            speed: 400,
            responsive: {
                768: {
                    items: 2,
                },
                1200: {
                    items: 3,
                }
            }
        });
    </script>
    <!--====== Style CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

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
                                        <label for="keyword" style="background-color: #FFFFFF"><a href="#" class="lni lni-search-alt theme-color"></a></label>
                                    </div>
                                </form>
                                <%
                                    String seid;
                                    if(session.getAttribute("id") == null) {
                                        seid = "로그인을 해주세요";
                                    } else {

                                        seid = (String) session.getAttribute("id") +  "님 환영합니다.";
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
                                    } else
                                    %><li><a href="logout">로그아웃</a></li>


                                    <li><a href="adminmain">어드민</a></li>
                                    <li><a href="mypage">내정보</a></li>

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

