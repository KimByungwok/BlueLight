<%--
  Created by IntelliJ IDEA.
  User: nepu
  Date: 2022-06-01
  Time: 오후 8:35
  To change this template use File | Settings | File Templates.
--%>
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
    <h1>공지사항</h1><br>
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
        <article>

          <form action="bbsWriteOK" id="bbsw" name="bbsw" encType = "multipart/form-data" method="post">
            <input type="text" name="bbs_title" class="form-control mt-4 mb-2"
                   placeholder="제목을 입력해주세요." required
            >
            <label class="form-label">작성 게시판: <%=request.getParameter("bd")%></label>
            <label class="form-label">작성자: <%=session.getAttribute("id")%></label>
            <input type="hidden" name="bd" value=<%=request.getParameter("bd")%>>
            <input type="hidden" name="id" value=<%=session.getAttribute("id")%>>
<%--            <input type="hidden" name="bbsGroup" value=<%=request.getParameter("bd")%>>--%>
            <input type="hidden" name="bbsID" value=<%=(int)session.getAttribute("bbsID")%>>
            <div class="form-group">
		<textarea class="form-control" rows="10" name="bbs_thread"
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

