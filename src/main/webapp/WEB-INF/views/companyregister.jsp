<%@include file="header.jsp"%>
<!--웹 페이지 한글 세팅 중요 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<br><br><br><br>
<html lang="en">
<head>

</head>
<body>

<div class="loginform"  style="margin-left: 20%; margin-right: 20%;">
	<div class="container mt-3">
		<h3 ><a href = "companyregister" style="text-decoration:none" >기업 회원가입</a></h3>
		<br><a href="registerselect"><button class="btn btn-outline-success">뒤로가기</button></a>
		<%-- 아이디 입력 --%>
		<form action="기업 회원가입#" class="was-validated">
			<div class="mb-3 mt-3">
				<hr>
				<label for="companyid" class="form-label">아이디:</label>
				<input type="text" class="form-control" id="companyid" placeholder="Enter companyid" name="companyid" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">아이디를 입력해주세요</div>
			</div>
			<%-- 비밀번호 입력 --%>
			<div class="mb-3">
				<label for="companypw" class="form-label">비밀번호:</label>
				<input type="password" class="form-control" id="companypw" placeholder="Enter companypw" name="companypw" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">비밀번호를 입력해주세요</div>
			</div>
			<%-- 기업 이름 입력 --%>
			<div class="mb-3 mt-3">
				<label for="companyname" class="form-label">기업 이름 :</label>
				<input type="text" class="form-control" id="companyname" placeholder="Enter companyname" name="companyname" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">이름을 입력해주세요</div>
			</div>
			<%-- 대표 번호 입력 --%>
			<div class="mb-3 mt-3">
				<label for="companyphonenum" class="form-label">대표 번호:</label>
				<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" id="companyphonenum" placeholder="Enter companyphonenum" name="companyphonenum" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">핸드폰 번호를 입력해주세요</div>
			</div>
			<%-- 주소 입력 --%>
			<div class="mb-3 mt-3">
				<label for="companyaddress" class="form-label">주소:</label>
				<input type="text" class="form-control" id="companyaddress" placeholder="Enter companyaddress" name="companyaddress" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">주소를 입력해주세요</div>
			</div>
			<%-- 이메일 입력 --%>
			<div class="mb-3 mt-3">
				<label for="companyemail" class="form-label">이메일:</label>
				<input type="email" class="form-control" id="companyemail" placeholder="Enter companyemail" name="companyemail" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">이메일을 입력해주세요</div>
			</div>
			<%-- 사업자 번호 입력 --%>
			<div class="mb-3 mt-3">
				<label for="companynum" class="form-label">사업자 번호:</label>
				<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" id="companynum" placeholder="Enter companynum" name="companynum" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">사업자 번호를 입력해주세요</div>
			</div>
			<%-- 개인정보 체크박스 --%>
			<div class="container row">
				<div class="col-12 col-sm-8 col-xl-9" >
					<div class="form-check1">
						<label class="form-check-label" for="remembercheck" style="font-size: 20px; margin-top: 5px; left: 0px;">ID 기억하기</label>
						<input type="checkbox" class="form-check-input1" id="remembercheck" name="remember" value="something" style="width: 20px; height: 20px; float: left;">
					</div>
				</div>
				<div class="col-12 col-sm-4 col-xl-3">
					<button type="submit" class="btn btn-primary">기업 회원가입</button>
				</div>
			</div>
		</form>
	</div>

</div>
</body>
</html>
<%@include file="footer.jsp"%>