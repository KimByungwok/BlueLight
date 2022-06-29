<%--
  Created by IntelliJ IDEA.
  User: rnrmf
  Date: 2022-06-21
  Time: 오전 11:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="/dbfindID">
        <div>
            <ul>
                <li>
                    이름
                </li>
                <li>
                    <input type="text" name="findID_name" id="findID_name">
                </li>
                <li>
                    전화번호
                </li>
                <li>
                    <input type="text" name="findID_phone" id="findID_phone">
                </li>
                <li>
                    <input type="submit" class="btn-check" value="확인">
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
