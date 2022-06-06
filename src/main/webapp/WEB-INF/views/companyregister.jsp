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
		<form action="registerOk" class="was-validated" name="joinForm" id="joinForm" onsubmit="return ncheck();">		<%-- 아이디 입력 --%>
			<%-- 아이디 입력 --%>
			<div class="mb-3 mt-3">
				<label for="id" class="form-label">아이디:</label>
				<input type="text" class="form-control" id="id" placeholder="Enter ID" name="id" required>
				<div class="valid-feedback">확인</div>
				<button type="button" id="idOverlap" onclick="fn_idOverlap2();">중복확인</button>
				<input hidden="hidden" id="idDuplication" name="idDuplication" value="idUncheck"/>
			</div>
				<script type="text/javascript">

					function  fn_idOverlap2() {
						var joinForm = document.joinForm;
						var id = joinForm.id.value;
						if(id.length==0 || id=="") {
							alert("아이디를 입력해주세요");
						} else {
							window.open("dbCheckID?user_id="+id,"","width=500, height=300");
						}
					}
				</script>
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
        <label for="phonenum" class="form-label">대표 번호:</label>
        <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" id="phonenum" placeholder="Enter companyphonenum" name="phonenum" required>
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
			<%-- 사업자 번호 입력 --%>
			<div class="mb-3 mt-3">
				<label for="companynum" class="form-label">사업자 번호:</label>
				<input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" class="form-control" id="companynum" placeholder="Enter companynum" name="companynum" required>
				<div class="valid-feedback">확인</div>
				<div class="invalid-feedback">사업자 번호를 입력해주세요</div>
      </div>
				<%-- 히든값 --%>
				<input type="hidden" name="flag" value="1">
			<%-- 개인정보 체크박스 --%>
			<div class="container row">
				<div class="col-12 col-sm-8 col-xl-9" >
					<input type="checkbox" class="form-check-input" id="check2" name="option2" value="something">
					<label class="form-check-label" for="check2">약관 동의</label>
				</div>
				<%-- 빈값 검증 --%>
				<script>
					function ncheck() {
						if (document.getElementById('idDuplication').value == "idUncheck")
						{
							alert("아이디 중복확인을 하세요.");
							return false;

						}
						else {
							return true;
						}

					}
				</script>
			</div>
		</form>
		<div style="display: flex; justify-content: flex-end">
			<button type="button"  class="btn btn-primary">개인 회원가입</button>
		</div>
	</div>
</div>
</body>
</html>
<%@include file="footer.jsp"%>