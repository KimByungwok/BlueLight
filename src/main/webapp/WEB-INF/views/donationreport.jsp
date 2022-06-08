<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
    <%@include file="header.jsp"%><br><br><br><br>
    <!--====== qudwok_style css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationreport.css">

</head>
<body>

<div class="container">
    <div class="row">
        <h1 style="text-align: center;">기부수입</h1><br>
        <div class="pie-chart2" style="justify-content: center;">
            <span class="center"><p>총액 : 123,456,789<%--{$ java}--%> 원</p></span>
        </div>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
                <article class="mypage_list">
                    <ul>
                        <li><a href="main">메인화면</a></li>
                        <li><a href="notice">공지사항</a></li>
                        <li><a href="faq">FAQ</a></li>
                        <li><a href="sponsorschedule">후원일정</a></li>
                        <li><a href="donationreport">기부현황</a></li>
                    </ul>
                </article>
            <%--기부현황 헤더--%>
            <article class="reportheader">
                <span class="bbsdivision">구분</span>
                <span class="bbssum">금액(원)</span>
                <span class="bbsratio">비율</span><hr>
                <!-- 게시글  -->
                <article class="reportmiddle">
                    <span class="bbshead">후원금수입</span><br><br>
                    <span class="bbsdivision">정기 후원</span>
                    <span class="bbssum">250,000원</span>
                    <span class="bbsratio">25%</span><hr>
                </article>
                <article class="reportbottom">
                    <span class="bbstotaldivision">소계</span>
                    <span class="bbstotal">123,456,789원</span>
                    <span class="bbstotalratio">90.1%</span><hr>
                </article>
            </article>
        </section>


        <%--기부현황 지출부분--%>
        <h1 style="text-align: center;">지출 현황</h1><br>
        <div class="pie-chart2" style="justify-content: center;">
            <span class="center"><p>총액 : 123,456,789<%--{$ java}--%> 원</p></span>
        </div>
        <section class="mypage_sidebar">
            <article class="mypage_listbottom">

            </article>
            <%--기부현황 헤더--%>
            <article class="reportheader">
                <span class="bbsdivision">구분</span>
                <span class="bbssum">금액(원)</span>
                <span class="bbsratio">비율</span><hr>
                <!-- 게시글  -->
                <article class="reportmiddle">
                    <span class="bbshead">후원금수입</span><br><br>
                    <span class="bbsdivision">정기 후원</span>
                    <span class="bbssum">250,000원</span>
                    <span class="bbsratio">25%</span><hr>
                </article>
                <article class="reportbottom">
                    <span class="bbstotaldivision">소계</span>
                    <span class="bbstotal">123,456,789원</span>
                    <span class="bbstotalratio">90.1%</span><hr>
                </article>
            </article>
        </section>
        <%-- 기부현황 페이징? 필요한가?--%>
        <ul class="pagination" style="justify-content: center;">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item "><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

