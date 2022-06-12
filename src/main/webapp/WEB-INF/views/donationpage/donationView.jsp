<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.spring.ex.dto.DonationDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
    <!--====== donationdetails css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationdetails.css">
</head>
<body>

<h1 style="text-align: center;">후원하기</h1><br>

<div class="container">
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
        <c:forEach items="${data}" var="DonationDTO" varStatus="status">
        <%--후원하기 start --%>
        <article class="noticeheader" >
            <span class="donationname">${DonationDTO.m_dTitle}</span>
            <span class="donationdate">${DonationDTO.m_ddayStart} ~ ${DonationDTO.m_ddayEnd}</span>
            <span class="donationHit">조회수 : ${DonationDTO.m_dHit}</span>

            <hr>
            <!-- 게시글 내용 start -->
            <article class="noticemiddle">
                <div>
                    <div class="single-product">
                        <div class="product-img">

                            <img src='${pageContext.request.contextPath}/resources/donationUploadImg/<c:out value="${dId}" />/<c:out value="${dId}"/>'/>

                        </div>
                    </div>
                </div>
                <div>
                    <span><c:out value="${DonationDTO.m_dContent}"/></span><br>
                    </div>
                <br>
                <!-- 게시글 내용 end -->

                <!-- 후원버튼그룹 start -->
                <div style="display: flex; justify-content: flex-end;">
                    <a href="donation_payment?dId=<c:out value="${dId}" />"><button class="btn-outline-primary btn-lg" style="margin: 2px;">후원하기</button></a>
                    <a href="livedonation_payment?dId=<c:out value="${dId}" />"><button class="btn-outline-success btn-lg" style="margin: 2px;">현장후원</button></a>
                    <a href="donation"><button class="btn-outline-dark btn-lg" style="margin: 2px;">목록</button></a>
                </div>
                <!-- 후원버튼그룹 end -->
            </article>
        </article>
        <%--후원하기 end --%>
        </c:forEach>
    </section>
</div>

<%@include file="../footer.jsp"%>
</body>
</html>