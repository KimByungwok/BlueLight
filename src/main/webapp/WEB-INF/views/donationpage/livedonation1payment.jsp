<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오후 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <%@include file="../header.jsp" %>
    <br><br><br><br>
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

        <%-- 현장후원 start--%>
        <article class="donationheader" style="flex-direction: column">
            <span class="donationinfo">후원정보 : 어쩌구~저쩌구~ 아무튼 기부할게~~</span>
            <hr>
            <span class="userinfo">후원자 정보 : 행복한 돼지<%--${java}--%></span>
            <hr>

            <article>
                <span style="width: 100px;">기부 종류<%--${java}--%></span>
                <span style="padding-left: 5.75em; width: 300px;">
                    <label class="form-check-label" for="itemcheckbox"
                           style="font-size: 20px; margin-top: 5px; ">물품기부</label>
                    <input type="checkbox" class="form-check-input1" id='itemcheckbox' onclick='doOpenCheck(this)'
                           name="option1" value="something" style="width: 20px; height: 20px; float: left; ">
                    </span>
                <span style="width: 300px;">
                    <label class="form-check-label" for="livecheckbox"
                           style="font-size: 20px; margin-top: 5px; ">현장후원</label>
                    <input type="checkbox" class="form-check-input1" id='livecheckbox' onclick='doOpenCheck(this)'
                           name="option1" value="something" style="width: 20px; height: 20px; float: left; ">
                </span>
            </article>

            <hr>
            <span class="donationmoney">후원물품
                <input type="text" id="itemdonation" class="donationtextarea" placeholder="기부할 물품을 입력해주세요"
                       style="width: 50%; margin-left: 70px;"></input>
                <br><span style="margin-left: 15px;">배송지 주소 : 경민대 효 401호</span>
            </span>
            <hr>
            <article>
                <span style="width: 100px;">신청 날짜<%--${java}--%></span>
                    <input type="date" name="selectday" style="width: 30%; margin-left: 70px;border: 1px solid;">
                <hr>
            </article>
            <article>
                <div class="col-lg-12" style="display: flex; justify-content: space-evenly; flex-direction: column">
                    <a href="#"><input type="button" class="btn btn-outline-secondary" value="신청하기"></a>
                </div>
            </article>
        </article>
        <%-- 현장후원 end--%>
    </section>
</div>
<%@include file="../footer.jsp" %>
<br><br><br><br>
</body>
</html>
