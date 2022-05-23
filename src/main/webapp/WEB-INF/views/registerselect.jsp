<%@include file="header.jsp"%>
<!--웹 페이지 한글 세팅 중요 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<br><br><br><br>
<div class="container">
    <div class="col-12 col-sm-12 col-lg-12">
        <div class="row" style="margin-left: 20%; margin-right: 20%;">
            <h3 style="text-align: center;">회원가입</h3>
            <button type="button" class="btn btn-outline-dark" onclick="location.href='privateregister'" style="margin-bottom: 10px;">개인 회원가입</button>
            <button type="button" class="btn btn-outline-primary"onclick="location.href='companyregister'">기업 회원가입</button>
        </div>
    </div>
</div>



<%@include file="footer.jsp"%>
