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
            <%--사이드 메뉴 start--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="admin">admin</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                    <li><a href="membermodify">회원수정</a></li>
                    <li><a href="membermypage">회원정보</a></li>
                    <li><a href="earningreport">수입현황</a></li>
                </ul>
            </article>
            <%--사이드 메뉴 end--%>

            <article style="width: 600px;">
                <div style="margin-bottom: 10px;">
                    <ul>
                        <li style=" font-size: 20px; margin-bottom: 10px;">아이디 : {@java}</li><br>
                        <li style=" font-size: 20px; margin-bottom: 10px;">비밀번호</li>
                        <li>
                            <input type="text" id="txtModifym_pw" style="border: solid 1px; padding: 5px 5px;" placeholder="{@java}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">이름</li>
                        <li>
                            <input type="text" id="txtModifym_name" style="border: solid 1px; padding: 5px 5px;" placeholder="{@java}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">전화번호</li>
                        <li>
                            <input type="text" id="txtModifym_phone" style="border: solid 1px; padding: 5px 5px;" placeholder="{@java}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">주소</li>
                        <li>
                            <input type="text" id="txtModifym_address" style="border: solid 1px; padding: 5px 5px; " placeholder="{@java}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">이메일</li>
                        <li>
                            <input type="text" id="txtModifym_email" style="border: solid 1px; padding: 5px 5px; " placeholder="{@java}">

                        </li>
                        <div style="display: flex; justify-content: flex-end;">
                            <a href="javascript:window.history.back();"><input type="button" class="btn-outline-danger" value="취소"></a>
                            <a href="#"><input type="button" class="btn-outline-success" value="확인" style="margin-left: 5px;"></a>
                        </div>
                    </ul>
                </div>
            </article>
        </section>
    </div>
</div>


<%@include file="../footer.jsp"%>
</body>
</html>