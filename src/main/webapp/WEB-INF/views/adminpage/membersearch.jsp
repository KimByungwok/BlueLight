<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  //  ArrayList<MemberBean> memberList = (ArrayList<MemberBean>)request.getAttribute("memberList");
%>
<html>
<head>
  <%--<%@include file="../header.jsp"%><br><br><br><br>--%>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <title>Canvas</title>
  <style type="text/css">
    body{
      line-height:2em;
      font-family:"맑은 고딕";
    }
    ul, li{
      list-style:none;
      text-align:center;
      padding:0;
      margin:0;
    }
    #head > div{
      font-size: 30px;
      line-height: 150px;
      margin-left: 50px;
    }
    #main{
      width: 100%;
      margin: 0 auto;}
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

    #mainWrapper{
      float: right;
      width: calc( 100% - 240px );
      min-width: 700px;
      margin: 10px
    }

    #mainWrapper > ul > li:first-child {
      text-align: center;
      font-size:14pt;
      height:40px;
      vertical-align:middle;
    }

    #ulTable {
      overflow: hidden;
    }

    #ulTable > li:first-child > ul > li {
      background-color:#c9c9c9;
      font-weight:bold;
      text-align:center;
    }

    #ulTable > li > ul {
      padding:0px auto;
      min-width:40px;
    }
    #ulTable > li > ul > li {
      float:left;
      font-size:15pt;
      border-bottom:1px solid silver;
      vertical-align:middle;
    }

    #ulTable > li > ul > li:first-child               {width:30%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:30%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:40%;} /*작성일 열 크기*/

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
      사이드메뉴
    </ul>
  </div>
  <div id="mainWrapper">
    <ul>
      <li style="margin-bottom: 20px">
        <%--    검색창     --%>
        <div>
          <input type="text" id='txtsearchall' style="width: calc(100% - 60px);"/>
          <input type='button' value='검색'/>
        </div>
        <%--    검색창 끝   --%>
      </li>
      <li>
        <ul id ="ulTable">
          <li>
            <ul>
              <li>이름</li>
              <li>아이디</li>
              <li>전화번호</li>
            </ul>
          </li>
          <!-- 게시물이 출력될 영역 -->
          <li>
            <ul>
              <li>김범준</li>
              <li class="left">kbj3145</li>
              <li>010-1234-1234</li>
            </ul>
          </li>
        </ul>
      </li>
      <li>
        <input type="submit" value="회원 추가" style="margin: 20px">
      </li>
    </ul>
  </div>
</div>

<%--<%@include file="../footer.jsp"%>--%>
</body>
</html>
