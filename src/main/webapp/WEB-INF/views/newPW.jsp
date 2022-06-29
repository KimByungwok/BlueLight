<%--
  Created by IntelliJ IDEA.
  User: rnrmf
  Date: 2022-06-21
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/dbnewPW">
        <div>
            <ul>
                <li>
                    아이디
                </li>
                <li>
                    <input type="text" name="newPW_id" id="newPW_id">
                </li>
                <li>
                    전화번호
                </li>
                <li>
                    <input type="text" name="newPW_phone" id="newPW_phone">
                </li>
                <li>
                    <input type="submit" class="btn-check" value="확인">
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
