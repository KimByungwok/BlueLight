<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <%@include file="../header.jsp" %>
    <br><br><br><br>
</head>
<body>
<div class="container">
    <div class="row">
        <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap;">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="earningreport">admin_main</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                </ul>
            </article>
            <%-- 개인 정보 start--%>
            <article class="noticeheader">
                회원검색 :
                <%--검색 메뉴 start--%>
                <select name="searchmenu" style="background-color: #cccccc">
                    <option value="membername" selected>회원 이름</option>
                    <option value="memberid">회원 아이디</option>
                    <option value="memberphone">회원 전화번호</option>
                </select>
                <%--검색 메뉴 end--%>
                <%--검색창 start--%>
                <input type="text" id='txtSearch' placeholder="회원을 검색하세용"
                       style="width: 400px; border: solid 1px; border-radius: 10px;"/>
                <input type='button' class="btn-outline-dark" id="btnSearch" value='검색' style="width: 100px;"/>
                <hr>
                <%--검색창 end--%>
                <span class="memberid">아이디</span>
                <span class="membername">이름</span>
                <span class="memberphone">핸드폰 번호</span>
                <%-- 내용 --%><br>
                <article class="noticemiddle">
                    <a href="" class="member">
                    <span class="memberid" style="width: 30%">{@javaid}</span>
                    <span class="membername" style="width: 30%">{@javapw}</span>
                    <span class="memberphone" style="width: 30%">{@javaname}</span>
                    </a>
                    <hr>
                </article>
                <%--각종 수정 버튼 그룹 start--%>
                <div style="display: flex; justify-content: flex-end;">
                    <a href="changepw"><input type="button" id="trigger" class="btn btn-outline-warning" value="비밀번호 변경"
                                              style=""></a>
                    <a href="mypageupdate"><input type="button" class="btn btn-outline-success" value="정보수정"
                                                  style="margin-right: 10px; margin-left: 10px;"></a>
                    <a href="inquiry"><input type="button" class="btn btn-outline-primary" value="문의하기"
                                             style="margin-left: 20px; margin-right: 10px"></a>
                </div>
                <%--각종 수정 버튼 그룹 end--%>
            </article>
            <%--개인정보 end--%>
        </section>
    </div>
</div>


<%@include file="../footer.jsp" %>
</body>
</html>