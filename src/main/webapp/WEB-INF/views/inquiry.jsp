<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오후 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <%@include file="header.jsp" %>
    <br><br><br><br>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<!-- Cotainer는 그렇게 양쪽 여백을 주게 되어있고  fluid 뭐시기는 여백 없음-->
<div class="container">
    <div class="row">
        <h1>문의하기</h1><br>
        <section class="mypage_sidebar" style="display: flex;">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="mypage">내정보</a></li>
                    <li><a href="inquiry">문의하기</a></li>
                </ul>
            </article>
            <%--문의하기 글 작성--%>
            <form method="post" action="#" style="width: 1000px;">
                <article>
                    <table class="table">
                        <tbody>
                        <tr>
                            <td><input type="text" class="form-control" placeholder="글 제목" name="inquirytitle"
                                       maxlength="40"></td>
                        </tr>
                        <tr>
                            <td><textarea type="text" class="form-control" placeholder="글 내용을 작성하세요"
                                          name="inquirydetail" maxlength="1024"
                                          style="height: 400px;"></textarea></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="display: flex; justify-content: flex-end;">
                        <a href="mypage"><input type="button" class="btn btn-outline-danger" value="취소하기"
                                                style="margin-right: 10px;"></a>
                        <a href=""><input type="submit" class="btn btn-outline-success" value="작성완료"
                                          style="margin-left: 10px;"></a>
                    </div>
                </article>
            </form>
        </section>
    </div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>
