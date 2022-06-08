<%--
  Created by IntelliJ IDEA.
  User: nepu
  Date: 2022-06-08
  Time: 오전 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.spring.ex.dto.DonationDTO" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
    <%@include file="header.jsp"%><br><br><br><br>
    <!--====== qudwok_style css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

</head>
<body>

<div class="container">
    <div class="row">
        <h1>후원하기</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="donation">후원하기</a></li>
                    <li><a href="livedonation">현장기부</a></li>
                </ul>
            </article>
            <c:forEach items="${data}" var="doneDTO" varStatus="status">
                <article class="mypagemiddle">
                    <label type="text" name="done_id" class="form-label">글번호 : ${doneDTO.m_dId}</label>
                    <br>
                    <label type="text" name="done_name" class="form-label">글쓴이 : ${doneDTO.m_dName}</label>
                    <br>
                    <label type="text" name="done_group" class="form-label">게시판 : ${doneDTO.m_dGroup}</label>
                    <br>
                    <label type="text" name="done_date" class="form-label">작성일 : ${doneDTO.m_dDate}</label>
                    <br>
                    <label type="text" name="done_dayStart" class="form-label">시작일자 : ${doneDTO.m_ddayStart}</label>
                    <label type="text" class="form-label"> ~ </label>
                    <label type="text" name="done_dayEnd" class="form-label">종료일자 : ${doneDTO.m_ddayEnd}</label>
                    <label type="text" name="done_Hit" class="form-label">조회수 : ${doneDTO.m_bHit}</label>
                    <br>
                    <label type="text" name="done_title" class="form-label">제목 : ${doneDTO.m_dTitle}</label>
                    <br>
                    <img src="resources/donationUploadImg/${dId}/${dId}" />
                    <br>
                    <label type="text" name="done_content" class="form-label">내용 : ${doneDTO.m_dContent}</label>
                </article>
            </c:forEach>


        </section>

    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

