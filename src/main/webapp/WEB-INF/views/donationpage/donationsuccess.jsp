<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
</head>
<body>


<div class="container">
    <h1>후원하기</h1><br>
    <section class="mypage_sidebar">
        <%--사이드 메뉴--%>
        <article class="mypage_list">
            <ul>
                <li><a href="main">메인화면</a></li>
                <li><a href="donation">후원하기</a></li>
                <li><a href="livedonation">현장기부</a></li>
            </ul>
        </article>
        <article class="noticeheader">
            <span class="donationname" style="text-align: center">후원이 완료되었습니다.</span><hr>
            <span class="donationdate" style="text-align: center">후원 정보 뭐시기</span>
            <a href="donation"><input type="button" class="btn btn-outline-dark" value="목록"></a>

        </article>
    </section>
</div>

<%@include file="../footer.jsp"%><br><br><br><br>
</body>
</html>
