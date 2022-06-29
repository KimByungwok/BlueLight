<%--
  Created by IntelliJ IDEA.
  User: rnrmf
  Date: 2022-06-21
  Time: 오전 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/login">
    <div>
        <ul>
            <li>
                아이디 : ${findID}
            </li>
            <li>
                <input type="submit" class="btn-check" onclick="window.close()" value="확인">
            </li>
        </ul>
    </div>
</form>
</body>
</html>
