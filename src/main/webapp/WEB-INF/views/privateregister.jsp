<%@include file="header.jsp"%>

<br><br><br><br>
<!--웹 페이지 한글 세팅 중요 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

</head>

<body>
<div class="loginform"  style="margin-left: 20%; margin-right: 20%;">
	<div class="container mt-3">
		<h3 ><a href = "privateregister" style="text-decoration:none" >개인 회원가입</a></h3>
		<br><a href="registerselect"><button class="btn btn-outline-success">뒤로가기</button></a>

		<form action="registerOk#" class="was-validated">
			<%-- 아이디 입력 --%>
			<div class="mb-3 mt-3">
				<label for="id" class="form-label">아이디:</label>
				<input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">아이디를 입력해주세요</div>
			</div>
			<%-- 비밀번호 입력 --%>
			<div class="mb-3">
				<label for="pw" class="form-label">비밀번호:</label>
				<input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">비밀번호를 입력해주세요</div>
			</div>
			<%-- 이름 입력 --%>
			<div class="mb-3 mt-3">
				<label for="name" class="form-label">이름 :</label>
				<input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">이름을 입력해주세요</div>
			</div>
			<%-- 핸드폰 번호 입력 --%>
			<div class="mb-3 mt-3">
				<label for="phonenum" class="form-label">핸드폰 번호:</label>
				<input type="number" class="form-control" id="phonenum" placeholder="Enter phonenum" name="phonenum" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">핸드폰 번호를 입력해주세요</div>
			</div>
			<%-- 주소 입력 --%>
			<div class="mb-3 mt-3">
				<label for="address" class="form-label">주소:</label>
				<input type="text" class="form-control" id="address" placeholder="Enter address" name="address" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">주소를 입력해주세요</div>
			</div>
			<%-- 이메일 입력 --%>
			<div class="mb-3 mt-3">
				<label for="email" class="form-label">이메일:</label>
				<input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">이메일을 입력해주세요</div>
			</div>

			<%-- 개인정보 체크박스 --%>
			<div class="container row">
				<div class="col-12 col-sm-8 col-xl-9" >
					<input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">
					<label class="form-check-label" for="check2">약관 동의</label>
				</div>
				<%-- 빈값 검증 --%>
				<script>

					$(document).ready(function(){

						$("#submit").click(function(){
							if($("#id").val().length==0){ alert("아이디를 입력하세요."); $("#id").focus(); return false; }
							if($("#pw").val().length==0){ alert("비밀번호를 입력하세요."); $("#pw").focus(); return false; }
							if($("#name").val().length==0){ alert("이름을 입력하세요."); $("#name").focus(); return false; }
							if($("#phonenum").val().length==0){ alert("휴대폰번호를 입력하세요."); $("#phonenum").focus(); return false; }
							if($("#address").val().length==0){ alert("주소를 입력하세요."); $("#address").focus(); return false; }
							if($("#email").val().length==0){ alert("이메일을 입력하세요."); $("#email").focus(); return false; }

						});
					});

				</script>
				<input type="hidden" name="flag" value="0">
				<input type="hidden" name="s_number" value="0">
				<div class="col-12 col-sm-4 col-xl-3">
					<button type="submit" class="btn btn-primary">개인 회원가입</button>
				</div>
			</div>

		</form>
	</div>
</div>
</body>
</html>
<%@include file="footer.jsp"%>
