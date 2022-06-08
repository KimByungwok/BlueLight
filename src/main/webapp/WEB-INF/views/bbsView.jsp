<%--
  Created by IntelliJ IDEA.
  User: nepu
  Date: 2022-06-07
  Time: 오전 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.spring.ex.dto.bbsDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>

<head>
    <%@include file="header.jsp" %>
    <br><br><br><br>
    <!--====== qudwok_style css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

</head>
<body>

<div class="container">
    <div class="row"><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="notice">공지사항</a></li>
                    <li><a href="sponsorschedule">후원일정</a></li>
                    <li><a href="donationreport">기부현황</a></li>
                </ul>
            </article>
            <%--게시글 상세 start--%>
            <c:forEach items="${data}" var="bbsDTO" varStatus="status">
                <article class="noticemiddle" style="width: 100%; display: flex; flex-wrap: wrap; justify-content: space-evenly;">
                    <span type="text" name="bbs_id" class="form-label">글번호 : ${bbsDTO.m_bId}</span>
                    <br>
                    <span type="text" name="bbs_name" class="form-label">글쓴이 : ${bbsDTO.m_bName}</span>
                    <br>
                    <%--게시판 종류 표시--%>
                    <%--<span type="text" name="bbs_group" class="form-label">게시판 : ${bbsDTO.m_bGroup}</span>
                    <br>--%>
                    <span type="text" name="bbs_title" class="form-label">제목 : ${bbsDTO.m_bTitle}</span>
                    <br>
                    <span type="text" name="bbs_Hit" class="form-label">조회수 : ${bbsDTO.m_bHit}</span>
                    <br>
                    <span type="text" name="bbs_date" class="form-label">작성일 : ${bbsDTO.m_bDate}</span>
                    <article style="width: 100%;">
                        <hr>
                        <img style="justify-content: center; width: 100%;" src="resources/bbsUploadImg/${bId}/${bId}"/>
                        <br><br>
                        <span type="text" name="bbs_content" class="form-label">내용 : ${bbsDTO.m_bContent}</span>
                        <div style="display: flex; justify-content: flex-end;">
                            <a href="javascript:window.history.back()">
                                <input type="button" class="btn btn-outline-dark" value="목록">
                            </a>
                        </div>
                    </article>
                </article>
            </c:forEach>
                <%--게시글 상세 end--%>
        </section>

    </div>
</div>
<%@include file="footer.jsp" %>

</body>
</html>

