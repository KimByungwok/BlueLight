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
                        <li style="margin-bottom: 20px">
                            <%--    검색창     --%>
                            <div>
                                <input type="text" id='txtSearch' style="width: calc(100% - 80px); padding: 5px"/>
                                <input type='submit' id="btnSearch" value='검색' style="width: 60px; padding: 5px;"/>
                            </div>
                            <%--    검색창     --%>
                        </li>
                        <li>
                            <ul id ="membersearch_ulBoard">
                                <li>
                                    <ul>
                                        <li style="background: #c6c6c6">이름</li>
                                        <li style="background: #C6C6C6">아이디</li>
                                        <li style="background: #C6C6C6">전화번호</li>
                                    </ul>
                                </li>
                                <!-- 게시물이 출력될 영역 -->
                                <li>
                                    <ul>
                                        <li>김범준</li>
                                        <li>kbj3145</li>
                                        <li>010-1234-1234</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <input type="submit" value="회원 추가" style="margin: 20px">
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