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
<!-- Cotainer는 그렇게 양쪽 여백을 주게 되어있고  fluid 뭐시기는 여백 없음-->
<div class="container">
    <div class="row">
        <h1>내정보</h1><br>
        <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap;">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="mypage">내정보</a></li>
                    <li><a href="inquiry">문의하기</a></li>
                </ul>
            </article>
            <%-- 개인 정보 start--%>
                <article class="noticeheader">
                    <span class="mypageid">아이디</span>
                    <span class="mypagepw">비밀번호</span>
                    <span class="mypagename">이름</span>
                    <span class="mypagepnum">핸드폰 번호</span>
                    <span class="mypageaddress">주소</span>
                    <%-- 내용 --%><br><br>
                    <article class="noticemiddle">
                        <span class="mypageid">mindragon</span>
                        <span class="mypagepw">leeminyong12@@</span>
                        <span class="mypagename">리민용</span>
                        <span class="mypageupnum">010-1234-5678</span>
                        <span class="mypageaddress">서울특별시 고백구 행복동 ><</span>
                        <hr>
                    </article>
                    <!-- 기부 목록 -->
                    <article class="noticeheader">
                        <span class="mypageid">기부 종류</span>
                        <span class="mypagepw">기부 내용</span>
                        <span class="mypagename" style="width: 200px;">기부 금액</span>
                        <span class="mypagepnum">결제수단</span>
                        <span class="mypageaddress"style="width: 200px;">날짜</span>
                        <%-- 내용 --%><br><br>
                        <article class="noticemiddle">
                            <span class="mypageid">현장 기부</span>
                            <span class="mypagepw">우크라이나 전쟁 후원</span>
                            <span class="mypagename" style="width: 200px;">200,000 원</span>
                            <span class="mypagepnum">카드</span>
                            <span class="mypageaddress" style="width: 200px;">22.05.27</span><hr>
                        </article>
                    </article>
                    <!-- 문의사항  -->
                    <article class="inquiryheader" style="align-content: space-between">
                        <span class="inquirytitle">문의 제목</span>
                        <span class="inquirydate">문의 날짜</span>
                        <span class="inquiryreply">답변 여부</span>
                        <%-- 내용 --%> <br><br>
                        <article class="inquirymiddle">
                            <span class="inquirytitle">이게 왜 되지?</span>
                            <span class="inquirydate">22.06.06</span>
                            <span class="inquiryreply">미답변</span><hr>
                        </article>
                    </article>
                    <div style="display: flex; justify-content: flex-end;">
                        <a href="changepw"><input type="button" id="trigger" class="btn btn-outline-warning" value="비밀번호 변경" style=""></a>
                        <a href="mypageupdate"><input type="button" class="btn btn-outline-success" value="정보수정" style="margin-right: 10px; margin-left: 10px;"></a>
                        <a href="inquiry"><input type="button" class="btn btn-outline-primary" value="문의하기" style="margin-left: 20px; margin-right: 10px"></a>
                    </div>
                </article>
            <%--개인정보 end--%>
        </section>
    </div>
</div>


<%@include file="footer.jsp"%>
</body>
</html>
