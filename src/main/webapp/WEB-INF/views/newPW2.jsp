<%--
  Created by IntelliJ IDEA.
  User: rnrmf
  Date: 2022-06-21
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/dbnewPW2">
    설정할 비밀번호를 입력하세요.
    <input type="text" name="nPW">
    <input type="submit" value="확인">
    <input type="hidden" name="newPW2_id" value="${newPW2_id}">
    <input type="hidden" name="newPW2_phone" value="${newPW2_phone}">
</form>

</body>
</html>
