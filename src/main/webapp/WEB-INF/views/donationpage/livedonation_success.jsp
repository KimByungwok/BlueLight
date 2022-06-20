<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-05-27
  Time: 오후 3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.spring.ex.dto.DonationDTO" %>
<%@ page import="java.util.List" %>
<html>
<head>
    <%@include file="../header.jsp" %>
    <br><br><br><br>
</head>
<body>


<div class="container">
    <h1>후원하기</h1><br>
    <section class="mypage_sidebar">
        <%--사이드 메뉴 start--%>
        <article class="mypage_list">
            <ul>
                <li><a href="main">메인화면</a></li>
                <li><a href="donation">후원하기</a></li>
                <li><a href="livedonation">현장기부</a></li>
            </ul>
        </article>
        <%--사이드 메뉴 end--%>
        <c:forEach items="${data}" var="LiveDonationDTO" varStatus="status">
            <%--현장 후원 완료 start--%>
            <article class="noticeheader">
                <span class="donationname"
                      style="text-align: center">${call_MList[0].m_name}님 ${LiveDonationDTO.m_dTitle} 후원신청이 완료되었습니다.</span>
                <hr>
                <span class="donationdate" style="text-align: center">기부 방법과 상세 내용이 어쩌구~~</span>
                <a href="livedonation"><input type="button" class="btn btn-outline-dark" value="목록"></a>
            </article>
            <%--현장 후원 완료 end--%>
        </c:forEach>
    </section>
</div>

<%@include file="../footer.jsp" %>
<br><br><br><br>
</body>
</html>

