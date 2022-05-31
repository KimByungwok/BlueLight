

<br><br><br><br>
<!--웹 페이지 한글 세팅 중요 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>

</head>
<body>
<%@include file="header.jsp"%><br><br><br><br>

<%--로그인 박스--%>
<div class="container mt-3">
    <div class="loginform">
    <form action="loginOK" class="was-validated" style="margin-left: 20%; margin-right: 20%;">
<%--로그인 상단 글자--%>
        <h3 style="text-align: center;"><a href = "login" style="text-decoration:none;">로그인</a></h3>
<%--아이디 입력--%>
            <div class="wrap">
            <label for="id" class="form-label">아이디:</label>
            <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required>
            <div class="valid-feedback">확인됨</div>
            <div class="invalid-feedback">아이디를 입력해주세요!</div>
        </div>
<%--비밀번호 입력--%>
        <div class="mb-3">
            <label for="pw" class="form-label">비밀번호:</label>
            <input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw" required>
            <div class="valid-feedback">확인됨</div>
            <div class="invalid-feedback">비밀번호를 입력하세요!</div>
        </div>
            <div class="col-12 col-sm-10 col-lg-12">
                    <div class="form-check1">
                        <label class="form-check-label" for="remembercheck" style="font-size: 20px; margin-top: 5px; left: 0px;">ID 기억하기</label>
                        <input type="checkbox" class="form-check-input1" id="remembercheck" name="remember" value="something" style="width: 20px; height: 20px; float: left;">
                    </div>
            </div>
        <br>
        <%--로그인 버튼--%>
        <div class="col-12 col-sm-12 col-lg-12">
            <div class="row" style="margin-left: 20%; margin-right: 20%;">
                <input type="submit" class="btn btn-outline-primary" style="display:inline-block;" value="로그인"></input>
            </div>
        </div>
    </form>
        <hr>
        <div class="col-12 col-sm-12 col-lg-12">
            <div class="row" style="margin-left: 20%; margin-right: 20%;">
                <h3 style="text-align: center;">회원가입</h3>
                <button type="button" class="btn btn-outline-dark" onclick="location.href='privateregister'" style="margin-bottom: 10px;">개인 회원가입</button>
                <button type="button" class="btn btn-outline-primary"onclick="location.href='companyregister'">기업 회원가입</button>
            </div>
        </div>
    </div>
</div>

<%@include file="footer.jsp"%>
</body>
</html>
