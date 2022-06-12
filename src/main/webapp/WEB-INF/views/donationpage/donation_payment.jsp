<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
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
        <%--후원하기 결제정보 입력 start--%>
        <article class="donationheader" style="flex-direction: column">
            <span class="donationinfo">후원정보 : ${DonationDTO.m_dTitle}</span><hr>
            <span class="userinfo">후원자 정보 : <%=session.getAttribute("id")%></span><hr>
            <span class="donationmoney">후원금액
                <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="donationtextarea" placeholder="숫자를 입력해주세요" style="width: 50%; margin-left: 10px;"></input>
                <p style="font-weight: bold; margin-left: 10px;">원</p>
                <span class="donationanony">
                <div class="form-check">
                    <label class="form-check-label" for="check1" style="font-size: 20px; margin-top: 5px; ">익명</label>
                    <input type="checkbox" class="form-check-input1" id="check1" name="option1" value="something" style="width: 20px; height: 20px; float: left;">
                </div>
                </span>
            </span><hr>
            <%--결제 버튼그룹 start--%>
            <article class="donationmid">
                <div class="col-lg-12" style="display: flex; justify-content: space-evenly; flex-direction: column">
                    <a href="#"><input type="button" class="btn btn-outline-secondary" value="계좌 이체"></a>
                    <a href="#"><input type="button" class="btn btn-outline-secondary" value="카드 결제"></a>
                    <a href="#"><input type="button" class="btn btn-outline-secondary" value="휴대폰 결제"></a>
                    <a href="#"><input type="button" class="btn btn-outline-secondary" value="페이 결제"></a>
                </div>
            </article>
            <%--결제 버튼그룹 end--%>
        </article>
        <%--후원하기 결제정보 입력 end--%>
    </c:forEach>
    </section>
</div>

<%@include file="../footer.jsp"%><br><br><br><br>
</body>
</html>
