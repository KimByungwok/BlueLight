<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>
    <script>
        /*물품 기부 체크 박스 텍스트 에어리어*/
        function itemcheckbox(checkbox) {

            // 1. 텍스트 박스 element 찾기
            const textbox_elem = document.getElementById('itemdonation');

            // 1. 체크박스 요소 찾기
            const livecheck = document.getElementById("livecheckbox");

            // 2-1. 체크박스 선택여부 체크
            // 2-2. 체크박스 선택여부에 따라 텍스트박스 활성화/비활성화
            textbox_elem.disabled = checkbox.checked ? false : true;
            livecheck.disabled = checkbox.checked ? true : false;


            // 3. 텍스트박스 활성화/비활성화 여부에 따라
            // - 텍스트박스가 비활성화 된 경우 : 텍스트박스 초기화
            // - 텍스트박스가 활성화 된 경우 : 포커스 이동
            if(textbox_elem.disabled) {
                textbox_elem.value = null;
            }else {
                textbox_elem.focus();
            }

            /*반대 버튼 비활성화*/
            if(itemcheckbox.disabled){

            }else{
                itemcheckbox.focus();
            }

        }

        /!*현장 기부 체크 박스 텍스트 에어리어*!/
        function livecheckbox(checkbox) {

            // 1. 체크박스 요소 찾기
            const checkbox_date1 = document.getElementById("date1");
            const checkbox_date2 = document.getElementById("date2");
            const checkbox_date3 = document.getElementById("date3");

            const livecheckbox = document.getElementById("itemcheckbox");

            // 2-1. 체크박스 선택여부 체크
            // 2-2. 체크박스 선택여부에 따라 텍스트박스 활성화/비활성화
            checkbox_date1.disabled = checkbox.checked ? false : true;
            checkbox_date2.disabled = checkbox.checked ? false : true;
            checkbox_date3.disabled = checkbox.checked ? false : true;

            livecheckbox.disabled = checkbox.checked ? true : false;

            // 3. 텍스트박스 활성화/비활성화 여부에 따라
            // - 텍스트박스가 비활성화 된 경우 : 텍스트박스 초기화
            // - 텍스트박스가 활성화 된 경우 : 포커스 이동

            /*반대 버튼 비활성화*/
            if(livecheckbox.disabled){

            }else{
                livecheckbox.focus();
            }
        }
    </script>
</head>
<body>

<label><input type='checkbox' id='itemcheckbox' onclick='itemcheckbox(this)'/>물품기부</label>
<input type='text' id='itemdonation' disabled />
<hr><hr>

<label><input type='checkbox' id='livecheckbox' onclick='livecheckbox(this)'/>현장 기부</label>
<input type='checkbox' id='date1' disabled value="옵션1" />
<input type='checkbox' id='date2' disabled value="옵션2"/>
<input type='checkbox' id='date3' disabled value="옵션3"/>


<%@include file="footer.jsp"%>
</body>
</html>

