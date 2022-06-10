<%@ page import="com.spring.ex.dto.DonationDTO" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:41
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

<div class="container">
    <div class="row">
        <h1>후원하기</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="donation">후원하기</a></li>
                    <li><a href="livedonation">현장기부</a></li>
                    <li><a href="donationWrite?bd=donationWrite">글쓰기</a></li>
                </ul>
            </article>
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
        </section>
    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

