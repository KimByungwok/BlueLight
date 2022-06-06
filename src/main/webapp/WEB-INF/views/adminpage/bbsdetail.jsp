<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<%--    <%@include file="../header.jsp"%><br><br><br><br>--%>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Canvas</title>
    <style type="text/css">
        body {
            min-width: 1000px;
        }

        #mainWrapper{
            float: right;
            width: calc( 100% - 240px );
            min-width: 700px;
            margin: 10px
        }
        #sidemenu{
            float: left;
            width: 200px;
            height: 1000px;               /* 임시로 1000px로 설정*/
            background-color: #c9c9c9;
            margin: 10px;
        }
        #sidemenu > ul {
            padding: 10px;
        }
        #sidemenu > ul > li {
            text-align: center;
            font-size: 20px;
        }
        ul, li{
            list-style:none;
            text-align:center;
            padding:0;
            margin:0;
        }
        .left {
            text-align : left;
        }
        #ulmodify > li{
            line-height: 30px;
        }
    </style>

</head>
<body>
<!-- 메뉴바 -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="main" style=color:white>
            <img src="img_avatar1.png" alt="Logo" style="width:40px;" class="rounded-pill">
            푸른빛</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">소식</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="notice">공지사항</a></li>
                        <li><a class="dropdown-item" href="#">2</a></li>
                        <li><a class="dropdown-item" href="#">3</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">메뉴2</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">4</a></li>
                        <li><a class="dropdown-item" href="#">5</a></li>
                        <li><a class="dropdown-item" href="#">6</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">로그인</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="login">로그인</a></li>
                        <li><a class="dropdown-item" href="#">회원가입</a></li>
                        <li><a class="dropdown-item" href="#">↑ 미구현</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- 메뉴바 끝 -->
<div id=main>
    <div id=sidemenu>
        <ul>
            <li>공지사항</li>
            <li>기부현황</li>
        </ul>
    </div>
    <div id="mainWrapper">
        <ul>
            <li style="border-width: 1px; border-style: solid none solid; border-color: gray; background: #c9c9c9; font-size: 20px">소식</li>
            <li style="margin-bottom: 50px">
                <input type="submit" value="공지사항" style="width: 300px; height: 100px; font-size: 50px; margin:20px;">
                <input type="submit" value="FAQ" style="width: 300px; height: 100px; font-size: 50px; margin: 20px">
            </li>
            <li style="border-width: 1px; border-style: solid none solid; border-color: gray; background: #c9c9c9; font-size: 20px">후원</li>
            <li>
                <input type="submit" value="모금후원" style="width: 300px; height: 100px; font-size: 50px; margin:20px">
                <input type="submit" value="현장후원" style="width: 300px; height: 100px; font-size: 50px; margin: 20px">
            </li>
        </ul>
    </div>
</div>
</body>
<%--<%@include file="../footer.jsp" %>--%>
</html>