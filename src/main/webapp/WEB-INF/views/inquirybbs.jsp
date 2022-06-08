<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-08
  Time: 오후 5:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>
</head>
<body>

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
                            <td><textarea type="text" rows="1" class="form-control" name="inquirytitle"
                                          maxlength="40">{@java} 글제목</textarea></td>
                        </tr>
                        <tr>
                            <td><textarea type="text" class="form-control" name="inquirydetail" maxlength="1024" style="height: 400px;">{@java} 글 내용 어쩌구 저쩌구 집에 보내줘요 나도 집에 갈래요ㅠ
                            </textarea></td>
                        </tr>
                        </tbody>
                    </table>
                    <div style="display: flex; justify-content: flex-end;">
                        <a href="javascript:window.history.back();"><input type="button" class="btn btn-outline-danger" value="취소하기" style="margin-right: 10px;"></a>
                        <a href=""><input type="submit" class="btn btn-outline-success" value="수정하기" style="margin-left: 10px;"></a>
                    </div>
                </article>
            </form>
        </section>
    </div>
</div>

<%@include file="footer.jsp"%>
</body>
</html>
