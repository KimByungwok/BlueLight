<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-24
  Time: 오후 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>
    <!--====== chart CSS ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">



</head>
<body>

<div class="container">
    <div class="pie-chart2" style="justify-content: center;">
        <span class="center"><p>총액 : 123,456,789<%--{$ java}--%> 원</p></span>
    </div>
    <section class="mypage_sidebar">
        <article class="mypage_list">
            <ul>
                <li><a href="adminmain">관리자 메인</a></li>
                <li><a href="sponsorschedule">후원일정</a></li>
                <li><a href="donationreport">기부현황</a></li>
            </ul>
        </article>
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
</div>
<%@include file="footer.jsp"%>
</body>
</html>


