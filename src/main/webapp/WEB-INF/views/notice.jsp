
<%@ page import="com.spring.ex.dto.bbsDTO" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
    <%@include file="header.jsp"%><br><br><br><br>
</head>
<body>

<div class="container">
    <div class="row">
        <h1>공지사항</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="notice">공지사항</a></li>
                    <li><a href="faq">FAQ</a></li>
                    <li><a href="sponsorschedule">후원일정</a></li>
                    <li><a href="donationreport">기부현황</a></li>
                </ul>
            </article>
<%--공지사항 헤더--%>
            <article class="noticeheader">
                <span class="bbsnum">글번호</span>
                <span class="bbstitle">글제목</span>
                <span class="bbsname">작성자</span>
                <span class="bbsdate">작성 시간</span>
                <span class="bbshit">조회수</span><hr>
                <!-- 공지사항 내용 -->
                <c:forEach items="${list}" var="bbsDTO" varStatus="status">
                <article class="noticemiddle">
                    <span class="bbsnum">${bbsDTO.m_bId}</span>
                    <a href='bbsView?bId=<c:out value="${bbsDTO.m_bId}"/>'><span class="bbstitle">${bbsDTO.m_bTitle}</span></a>
                    <span class="bbsname">${bbsDTO.m_bName}</span>
                    <span class="bbsdate">${bbsDTO.m_bDate}</span>
                    <span class="bbshit">${bbsDTO.m_bHit}</span>
                </article>
                </c:forEach>
                <br>
                <%--버튼 오른쪽 끝에 두기--%>
                <div class="buttongroup">
                    <button type="button" class="btn btn-outline-dark lg" onclick="location.href='bbswrite?bd=notice'" style="margin-right: 20px;">글쓰기</button>
                </div>
            </article>
        </section>
    </div>
</div>

<%@include file="footer.jsp"%>

</body>
</html>