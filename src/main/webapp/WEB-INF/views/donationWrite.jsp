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
        <article>

          <form action="donationWriteOK" id="donew" name="donew" encType = "multipart/form-data" method="post">
            <input type="text" name="done_title" class="form-control mt-4 mb-2"
                   placeholder="제목을 입력해주세요." required
            >

            <label class="form-label">작성 게시판: <%=request.getParameter("bd")%></label>
            <label class="form-label">작성자: <%=session.getAttribute("id")%></label>
            <br>
            <label class="form-label">시작일자: </label>
            <input type="date" name="doneDayStart" style="width: 30%; margin-left: 70px;border: 1px solid;">
            <label class="form-label"> ~ </label>
            <br>
            <label class="form-label">종료일자: </label>
            <input type="date" name="doneDayEnd" style="width: 30%; margin-left: 70px;border: 1px solid;">
            <br>
            <select name="done_Group">
              <option>종합기부</option>
              <option>일반기부</option>
              <option>현장기부</option>
            </select>
            <input type="hidden" name="bd" value=<%=request.getParameter("bd")%>>
            <input type="hidden" name="id" value=<%=session.getAttribute("id")%>>
            <%--            <input type="hidden" name="bbsGroup" value=<%=request.getParameter("bd")%>>--%>
            <input type="hidden" name="doneID" value=<%=(int)session.getAttribute("doneID")%>>

            <div class="form-group">
		<textarea class="form-control" rows="10" name="done_thread"
                  placeholder="내용을 입력해주세요" required
        ></textarea><br>
              <input type="file" name="fileName">사진첨부</td>
            </div>
            <button type="submit" class="btn btn-secondary mb-3">작성완료</button>
          </form>
        </article>
    </section>


  </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

