<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오후 3:23
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
    <h1>후원하기</h1><br>
    <section class="mypage_sidebar">
        <%--사이드 메뉴 start--%>
        <article class="mypage_list">
            <ul>
                <li><a href="main">메인화면</a></li>
                <li><a href="donation">후원하기</a></li>
                <li><a href="livedonation">현장기부</a></li>
            </ul>
        </article>
        <%--사이드 메뉴 end--%>

        <!-- 기부완료 start -->
        <article class="noticeheader">
            <span class="donationname" style="text-align: center"><%=session.getAttribute("name")%>(<%=session.getAttribute("id")%>)님 후원이 완료되었습니다.</span>
            <hr>
            <span class="mypageid">기부 종류</span>
            <span class="mypagepw">기부 내용</span>
            <span class="mypagename" style="width: 200px;">기부 금액</span>
            <span class="mypagepnum">결제수단</span>
            <span class="mypageaddress" style="width: 200px;">날짜</span>
            <br><br>
            <article class="noticemiddle">
                <span class="mypageid">기부</span>
                <span class="mypagepw"> ${payData.m_pbbsID}</span>
                <span class="mypagename" style="width: 200px;">${payData.m_pPrice}원</span>
                <span class="mypagepnum">${payData.m_pPtype}</span>
                <span class="mypageaddress" style="width: 200px;">${payData.m_pDate}</span>
            </article>
<%--            //        m_pId 유저아이디--%>
<%--            //        m_pbbsID 글번호--%>
<%--            //        m_pDate 기부날짜--%>
<%--            //        m_pPrice 기부금액--%>
<%--            //        m_pCard_num 카드넘버--%>
<%--            //        m_prefund 결제성공유무--%>
<%--            //        m_Ptype 기부형식--%>
            <%--목록으로 가기--%>
            <div style="display: flex; justify-content: flex-end;">
                <a href="donation"><input type="button" class="btn btn-outline-dark" value="목록"></a>
            </div>
        </article>
        <%-- 기부완료 end--%>
    </section>
</div>

<%@include file="../footer.jsp" %>
<br><br><br><br>
</body>
</html>
