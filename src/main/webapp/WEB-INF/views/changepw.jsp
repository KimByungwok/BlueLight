<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오후 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>
</head>
<body>

<div class="container mt-3">
    <h1>비밀번호 변경</h1><br>
    <form action="<%-- 내정보 변경 OK.jsp --%>" class="was-validated">
        <div class="mb-3 mt-3">
            <%-- 현재 비번 입력 --%>
            <input type="text" class="form-control" id="nowpw" placeholder="현재 비밀번호를 입력하세요" required>
            <div class="valid-feedback">확인</div>
        </div>
        <div class="mb-3 mt-3">
            <%-- 바꿀 비번 입력 --%>
            <input type="text" class="form-control" id="changepw" placeholder="변경할 비밀번호를 입력하세요" required>
            <div class="valid-feedback">확인</div>
        </div>
        <div class="mb-3 mt-3">
            <%-- 바꿀 비번 체크 --%>
            <input type="text" class="form-control" id="changepwcheck" placeholder="변경할 비밀번호를 다시 입력하세요" required>
            <div class="valid-feedback">확인</div>
        </div>

        <%-- 버튼 그룹 --%>
        <div style="display: flex; justify-content: flex-end;">
            <a href="mypage"><input type="button" class="btn btn-outline-danger" value="취소하기" style="margin-right: 10px;"></a>
            <a href=""><input type="submit" class="btn btn-outline-success" value="변경하기" style="margin-left: 10px;"></a>
        </div>
    </form>
</div>


<%@include file="footer.jsp"%>
</body>
</html>


