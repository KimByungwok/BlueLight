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
                    <li><a href="admin">admin</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                    <li><a href="membermodify">회원수정</a></li>
                    <li><a href="membermypage">회원정보</a></li>
                    <li><a href="earningreport">수입현황</a></li>
                </ul>
            </article>
            <%-- 개인 정보 start--%>
            <article class="membersearch_head">
                <form action="membersearch" id="seaok" name="seaok">
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
                    <input type='submit' class="btn-outline-dark" id="btnSearch" name ="btnSearch" value='검색' style="width: 100px;"/>
                    <hr>
                    <%--검색창 end--%>
                </form>
                <span class="memberid">아이디</span>
                <span class="membername">이름</span>
                <span class="memberphone">핸드폰 번호</span>
                <%-- 내용 --%><br>
                <article class="membersearch_mid">
                    <c:forEach items="${list}" var="search" varStatus="status">
                    <a id="memberid" href="membermypage?fId=<c:out value="${search.m_id}"/>" class="member" style="width: 30%; text-align: center;">
                        <span class="memberid">${search.m_id}</span>
                    </a>
                    <a id="membername" href="membermypage?fId=<c:out value="${search.m_id}"/>" class="member" style="width: 30%; text-align: center;">
                        <span class="membername">${search.m_name}</span>
                    </a>
                    <a id="memberphone" href="membermypage?fId=<c:out value="${search.m_id}"/>" class="member" style="width: 23%; text-align: center;">
                        <span class="memberphone">${search.m_phone}</span>
                    </a>
                    <hr>
                    </c:forEach>
                </article>
            </article>
            <%--개인정보 end--%>
        </section>
    </div>
</div>


<%@include file="../footer.jsp" %>
</body>
</html>