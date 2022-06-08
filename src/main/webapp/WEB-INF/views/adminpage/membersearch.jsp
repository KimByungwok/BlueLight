<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
</head>
<body>
<div class="container">
    <div class="row">
        <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap; min-width: 820px;">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="earningreport">admin_main</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                </ul>
            </article>
                <%-- 개인 정보 start--%>
                <article class="noticeheader">
                    <%--    검색창     --%>
                    <div>
                        <input type="text" id='txtSearch' placeholder="회원을 검색하세용" style="border: solid 1px; width: calc(100% - 80px); padding: 5px"/>
                        <input type='button' class="btn-outline-dark" id="btnSearch" value='검색' style="width: 60px; padding: 5px;"/>
                    </div>

                    <span class="mypageid">아이디</span>
                    <span class="mypagepw">비밀번호</span>
                    <span class="mypagename">이름</span>
                    <span class="mypagepnum">핸드폰 번호</span>
                    <span class="mypageaddress">주소</span>
                    <%-- 내용 --%><br><br>
                    <article class="noticemiddle">
                        <span class="mypageid">{@javaid}</span>
                        <span class="mypagepw">{@javapw}</span>
                        <span class="mypagename">{@javaname}</span>
                        <span class="mypagepnum">{@javapnum}</span>
                        <span class="mypageaddress">{@javaaddress}</span>
                        <hr>
                    </article>
                    <!-- 기부 목록 start-->
                    <article class="noticeheader">
                        <span class="mypageid">기부 종류</span>
                        <span class="mypagepw">기부 내용</span>
                        <span class="mypagename" style="width: 200px;">기부 금액</span>
                        <span class="mypagepnum">결제수단</span>
                        <span class="mypageaddress"style="width: 200px;">날짜</span>
                        <%-- 내용 --%><br><br>
                        <article class="noticemiddle">
                            <span class="mypageid">{@java현장기부}</span>
                            <span class="mypagepw">{@java어디 후원}</span>
                            <span class="mypagename" style="width: 200px;">{@java 얼마} 원</span>
                            <span class="mypagepnum">{@java결제수단}</span>
                            <span class="mypageaddress" style="width: 200px;">{@java날짜}</span><hr>
                        </article>
                    </article>
                    <!-- 기부 목록 end-->

                    <!-- 문의사항 start -->
                    <article class="inquiryheader" style="align-content: space-between">
                        <span class="inquirytitle">문의 제목</span>
                        <span class="inquirydate">문의 날짜</span>
                        <span class="inquiryreply">답변 여부</span>
                        <%-- 내용 --%> <br><br>
                        <article class="inquirymiddle">
                            <a href="inquirybbs"><span class="inquirytitle">{@java문의 제목}</span></a>
                            <span class="inquirydate">{@java문의 날짜}</span>
                            <span class="inquiryreply">{@java문의 답변}</span><hr>
                        </article>
                    </article>
                    <!-- 문의사항 end -->

                    <%--각종 수정 버튼 그룹 start--%>
                    <div style="display: flex; justify-content: flex-end;">
                        <a href="changepw"><input type="button" id="trigger" class="btn btn-outline-warning" value="비밀번호 변경" style=""></a>
                        <a href="mypageupdate"><input type="button" class="btn btn-outline-success" value="정보수정" style="margin-right: 10px; margin-left: 10px;"></a>
                        <a href="inquiry"><input type="button" class="btn btn-outline-primary" value="문의하기" style="margin-left: 20px; margin-right: 10px"></a>
                    </div>
                    <%--각종 수정 버튼 그룹 end--%>
                </article>
                <%--개인정보 end--%>
        </section>
    </div>
</div>


<%@include file="../footer.jsp"%>
</body>
</html>