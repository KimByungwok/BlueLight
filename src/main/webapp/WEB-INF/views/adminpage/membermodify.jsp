<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
</head>
<body>
<div class="container">
    <div class="row">
        <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap; min-width: 820px;">
            <%--사이드 메뉴 start--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="admin">admin</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                    <li><a href="membermodify">회원수정</a></li>
                    <li><a href="membermypage">회원정보</a></li>
                    <li><a href="earningreport">수입현황</a></li>
                </ul>
            </article>
            <%--사이드 메뉴 end--%>

            <article style="width: 600px;">
                <div style="margin-bottom: 10px;">
                    <form action="membermodifyOK" id="mdOK" name="mdOK">
                    <ul>
                        <li style=" font-size: 20px; margin-bottom: 10px;">아이디 : ${list[0].m_id}</li><br>
                        <input type="hidden" id="txtModifym_id" name="txtModifym_id" style="border: solid 1px; padding: 5px 5px;" value="${list[0].m_id}">

                        <li style=" font-size: 20px; margin-bottom: 10px;">비밀번호</li>
                        <li>
                            <input type="text" id="txtModifym_pw" name="txtModifym_pw" style="border: solid 1px; padding: 5px 5px;" placeholder="변경할 비밀번호를 입력하세요" value="${list[0].m_pw}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">관리자권한(0유저 1관리자)</li>
                        <li>
                            <input type="text" id="txtModifym_admin" name="txtModifym_admin" style="border: solid 1px; padding: 5px 5px;" placeholder="관리자 권한 여부를 입력하세요" value="${list[0].m_flag}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">이름</li>
                        <li>
                            <input type="text" id="txtModifym_name" name="txtModifym_name" style="border: solid 1px; padding: 5px 5px;" placeholder="이름을 입력하세요" value="${list[0].m_name}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">전화번호</li>
                        <li>
                            <input type="text" id="txtModifym_phone" name="txtModifym_phone" style="border: solid 1px; padding: 5px 5px;" placeholder="전화번호를 입력해주세요" value="${list[0].m_phone}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">주소</li>
                        <li>
                            <input type="text" id="txtModifym_address" name="txtModifym_address" style="border: solid 1px; padding: 5px 5px; " placeholder="주소를 입력해주세요" value="${list[0].m_address}">
                        </li>
                        <li style=" font-size: 20px; margin-bottom: 10px;">이메일</li>
                        <li>
                            <input type="text" id="txtModifym_email" name="txtModifym_email" style="border: solid 1px; padding: 5px 5px; " placeholder="이메일을 입력해주세요" value="${list[0].m_email}">

                        </li>

                        <li style=" font-size: 20px; margin-bottom: 10px;">사업자번호</li>
                        <c:choose>
                            <c:when test="${empty search.m_s_number}">
                                <li>
                                    <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="txtModifym_s_number" name="txtModifym_s_number" style="border: solid 1px; padding: 5px 5px; " placeholder="사업자아님(숫자입력시 사업자 회원으로 전환)">
                                </li>
                            </c:when>
                            <c:when test="${not empty search.m_s_number}">
                                <li>
                                    <input type="text" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" id="txtModifym_s_number" name="txtModifym_s_number" style="border: solid 1px; padding: 5px 5px; " placeholder="{@java}" value="${list[0].m_s_number}">
                                </li>
                            </c:when>
                        </c:choose>

                        <div style="display: flex; justify-content: flex-end;">
                            <a href="javascript:window.history.back();"><input type="button" class="btn-outline-danger" value="취소"></a>
                            <a><input type="submit" class="btn-outline-success" value="확인" style="margin-left: 5px;"></a>
                        </div>
                    </ul>
                    </form>
                </div>

            </article>
        </section>
    </div>
</div>


<%@include file="../footer.jsp"%>
</body>
</html>