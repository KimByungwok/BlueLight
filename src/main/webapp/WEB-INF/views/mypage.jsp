<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-05-27
  Time: 오전 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
    <%@include file="header.jsp"%><br><br><br><br>
</head>
<body>

<style>
    /* 줄 바꿈 태그 길이 설정*/
    hr {
        width: 100%
    }

    label {
        font-weight: bold;
    }
</style>


<!-- Cotainer는 그렇게 양쪽 여백을 주게 되어있고  fluid 뭐시기는 여백 없음-->
<div class="container">
    <div class="row">
        <h1>내정보</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="mypage">내정보</a></li>
                    <li><a href="#">문의하기</a></li>
                </ul>
            </article>
            <%--공지사항 헤더--%>
                <article class="noticeheader" style="display: inline-block">
                    <span class="mypageid">아이디</span>
                    <span class="mypagepw">비밀번호</span>
                    <span class="mypagename">이름</span>
                    <span class="mypagepnum">핸드폰 번호</span>
                    <span class="mypageaddress">주소</span>
                    <br><br>
                    <!-- 게시글  -->
                    <article class="noticemiddle">
                        <span class="mypageid">mindragon</span>
                        <span class="mypagepw">leeminyong12@@</span>
                        <span class="mypagename">리민용</span>
                        <span class="mypageupnum">010-1234-5678</span>
                        <span class="mypageaddress">서울특별시 고백구 행복동 ><</span>
                        <a href="#"><input type="button" class="btn btn-outline-success" value="정보수정" style="float: right"></a>
                        <hr>
                    </article>
                    <article class="noticeheader">
                        <span class="mypageid">기부 종류</span>
                        <span class="mypagepw">기부 내용</span>
                        <span class="mypagename">기부 금액</span>
                        <span class="mypagepnum">결제수단</span>
                        <span class="mypageaddress">날짜</span><br>
                        <!-- 게시글  -->
                        <article class="noticemiddle">
                            <span class="mypageid">현장 기부</span>
                            <span class="mypagepw">우크라이나 전쟁 후원</span>
                            <span class="mypagename">200,000</span>
                            <span class="mypageupnum">카드</span>
                            <span class="mypageaddress">22.05.27</span><hr>
                        </article>
                    </article>
                </article>
        </section>
        <%--공지사항 중앙--%>
    </div>
</div>

<%@include file="footer.jsp"%>
</body>
</html>
