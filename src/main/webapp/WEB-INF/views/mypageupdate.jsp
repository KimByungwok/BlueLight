<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
<%@include file="header.jsp"%><br><br><br><br>
</head>

<body>

<div class="container mt-3">
    <h1>내정보</h1><br>
    <form action="<%-- 내정보 변경 OK.jsp --%>" class="was-validated">
        <a href="changepw"><input type="button" class="btn btn-outline-warning" value="비밀번호 변경하기"></a>
        <div class="mb-3 mt-3">
            <%-- 이름 입력 --%>
            <label for="uname" class="form-label">이름:</label>
            <input type="text" class="form-control" id="uname" placeholder="Enter username" name="uname" required>
            <div class="valid-feedback">확인</div>
            <div class="invalid-feedback">이름을 입력해주세요</div>
        </div>
        <div class="mb-3 mt-3">
            <%-- 핸드폰 번호 입력 --%>
            <label for="phonenum" class="form-label">핸드폰 번호:</label>
            <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" id="phonenum" placeholder="Enter phonenum" name="phonenum" required>
            <div class="valid-feedback">확인</div>
            <div class="invalid-feedback">핸드폰 번호를 입력해주세요</div>
        </div>
        <div class="mb-3 mt-3">
            <%-- 주소 입력 --%>
            <label for="uname" class="form-label">주소</label>
            <input type="text" class="form-control" id="uaddress" placeholder="Enter username" name="uname" required>
            <div class="valid-feedback">확인</div>
            <div class="invalid-feedback">주소를 입력해주세요</div>
        </div>
        <div class="mb-3 mt-3">
            <%-- 이메일 입력 --%>
            <label for="uname" class="form-label">이메일</label>
            <input type="email" class="form-control" id="uemail" placeholder="Enter username" name="uname" required>
            <div class="valid-feedback">확인</div>
            <div class="invalid-feedback">이메일을 입력해주세요</div>
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
