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
            <%--사이드 메뉴--%>
            <article style="width: calc(100% - 180px); min-width: 570px">
                <div style="margin-bottom: 10px;">
                    <ul>
                        <li style="border-width: 1px; border-style: solid none solid; border-color: gray; font-size: 20px; margin-bottom: 10px;">비밀번호</li>
                        <li class="left">
                            <input type="text" id="txtModifym_pw" style="width: 100%; padding: 5px;">
                        </li>
                        <li style="border-width: 1px; border-style: solid none solid; border-color: gray; font-size: 20px; margin-bottom: 10px; margin-top: 20px">이름</li>
                        <li class="left">
                            <input type="text" id="txtModifym_name" style="width: 100%; padding: 5px;">
                        </li>
                        <li style="border-width: 1px; border-style: solid none solid; border-color: gray; font-size: 20px; margin-bottom: 10px; margin-top: 20px">전화번호</li>
                        <li class="left">
                            <input type="text" id="txtModifym_phone" style="width: 100%; padding: 5px;">
                        </li>
                        <li style="border-width: 1px; border-style: solid none solid; border-color: gray; font-size: 20px; margin-bottom: 10px; margin-top: 20px">주소</li>
                        <li class="left">
                            <input type="text" id="txtModifym_address" style="width: 100%; padding: 5px;">
                        </li>
                        <li style="border-width: 1px; border-style: solid none solid; border-color: gray; font-size: 20px; margin-bottom: 10px; margin-top: 20px">이메일</li>
                        <li class="left">
                            <input type="text" id="txtModifym_email" style="width: 100%; padding: 5px;">
                        </li>
                        <li style="margin-top: 50px">
                            <input type="submit" value="확인" style="width: 80px; padding: 5px;">
                            <input type="submit" value="취소" style="width: 80px; padding: 5px;">
                        </li>
                    </ul>
                </div>
            </article>
        </section>
    </div>
</div>


<%@include file="../footer.jsp"%>
</body>
</html>