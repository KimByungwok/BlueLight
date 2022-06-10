<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 3:25
  To change this template use File | Settings | File Templates.
--%>

<%--스크립트용 jsp--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<%--    <!--====== admin css ======-->--%>
<%--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin.css">--%>

    <!--====== bbsview css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bbsview.css">


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

</body>
</html>
