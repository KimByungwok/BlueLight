<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:24
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
<h1 style="text-align: center;">후원일정</h1><br>

<div class="container">
    <div class="row">
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="notice">공지사항</a></li>
                    <li><a href="sponsorschedule">후원일정</a></li>
                    <li><a href="donationreport">기부현황</a></li>
                </ul>
            </article>
            <%--공지사항 헤더--%>
            <article class="noticeheader">
                <span class="bbsnum">글번호</span>
                <span class="bbstitle">글제목</span>
                <span class="bbsname">작성자</span>
                <span class="bbsdate">작성 시간</span>
                <span class="bbshit">조회수</span><hr>
                <!-- 게시글  -->
                <article class="noticemiddle">
                    <span class="bbsnum">1</span>
                    <span class="bbstitle">집갈뤠ㅜㅜ</span>
                    <span class="bbsname">나다</span>
                    <span class="bbsdate">22.05.23.11.46</span>
                    <span class="bbshit">7</span>
                </article>

            </article>
        </section>
        <%--공지사항 중앙--%>

    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

