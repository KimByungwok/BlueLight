<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

    #ulTable > li > ul > li:first-child               {width:20%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:60%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:20%;} /*작성일 열 크기*/


    #ulTable2 > li:first-child > ul > li {
      background-color:#c9c9c9;
      font-weight:bold;
      text-align:center;
    }

    #ulTable2 > li > ul {
      padding:0px auto;
      min-width:40px;
    }
    #ulTable2 > li > ul > li {
      float:left;
      font-size:15pt;
      border-bottom:1px solid silver;
      vertical-align:middle;
    }
    #ulTable2 > li > ul > li:first-child               {width:20%;} /*No 열 크기*/
    #ulTable2 > li > ul > li:first-child +li           {width:60%;} /*제목 열 크기*/
    #ulTable2 > li > ul > li:first-child +li+li        {width:20%;} /*작성일 열 크기*/

    #divPaging {
      clear:both;
      margin:0 auto;
      width:220px;
      height:50px;
    }

    #divPaging > div {
      float:left;
      width: 30px;
      margin:0 auto;
      text-align:center;
    }
    #divPaging2 {
      clear:both;
      margin:0 auto;
      width:220px;
      height:50px;
    }

    #divPaging2 > div {
      float:left;
      width: 30px;
      margin:0 auto;
      text-align:center;
    }

    #liSearchOption {clear:both;}
    #liSearchOption > div {
      margin:0 auto;
      margin-top: 30px;
      width:auto;
      height:100px;

    }

    .left {
      text-align : left;
    }
    .submit {
      position: relative;
      bottom: 35px;
      line-height: 20px;
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
      사이드메뉴
    </ul>
  </div>
  <div id="mainWrapper">
    <%--    검색창     --%>
    <div>
      <input type="text" id='txtsearchall' style="width: calc(100% - 60px); margin-bottom: 10px"/>
      <input type='button' value='검색'/>
    </div>
    <%--    검색창 끝   --%>
    <div style="margin-bottom: 10px;">
      <ul id="memberinfo" style="list-style: none;">
        <li class="left">
          아이디 : kbj3145
        </li>
        <li class="left">
          비밀번호 : 1234
        </li>
        <li class="left">
          이름 : 김범준
        </li>
        <li class="left">
          전화번호 : 010-1234-1234
        </li>
        <li class="left">
          주소 : 경민대
        </li>
        <li style="text-align: right">
          <input type="submit" value="정보 수정" class="submit">
          <input type="submit" value="회원 삭제" class="submit">
        </li>
      </ul>
    </div>

    <div>
      <ul>
        <!-- 게시판 목록  -->
        <li>
          <ul id ="ulTable">
            <li>
              <ul>
                <li>후원종류</li>
                <li>후원명</li>
                <li>날짜</li>
              </ul>
            </li>
            <!-- 게시물이 출력될 영역 -->
            <li>
              <ul>
                <li>모금후원</li>
                <li class="left">후원입니다.</li>
                <li>2022.01.01</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>현장후원</li>
                <li class="left">후원</li>
                <li>2022.01.01</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>모금후원</li>
                <li class="left">후원</li>
                <li>2022.01.01</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>현장후원</li>
                <li class="left">후원입니다.</li>
                <li>2022.01.01</li>
              </ul>
            <li>
          </ul>
        </li>
        <!-- 게시판 페이징 영역 -->
        <li>
          <div id="divPaging">
            <div>◀</div>
            <div><b>1</b></div>
            <div>2</div>
            <div>3</div>
            <div>4</div>
            <div>5</div>
            <div>▶</div>
          </div>
        </li>
        <li style="text-align: right">
          <input type="submit" value="추가" class="submit">
          <input type="submit" value="삭제" class="submit">
        </li>
      </ul>
    </div>
    <div>
      <ul>
        <!-- 게시판 목록  -->
        <li>
          <ul id="ulTable2">
            <li>
              <ul>
                <li>답변여부</li>
                <li>제목</li>
                <li>날짜</li>
              </ul>
            </li>
            <!-- 게시물이 출력될 영역 -->
            <li>
              <ul>
                <li>미답변</li>
                <li class="left">문의합니다</li>
                <li>2022.01.01</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>답변완료</li>
                <li class="left">문의</li>
                <li>2022.01.01</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>답변완료</li>
                <li class="left">문의</li>
                <li>2022.01.01</li>
              </ul>
            </li>

            <li>
              <ul>
                <li>답변완료</li>
                <li class="left">문의</li>
                <li>2022.01.01</li>
              </ul>
            <li>
          </ul>
        </li>

        <!-- 게시판 페이징 영역 -->
        <li>
          <div id="divPaging2">
            <div>◀</div>
            <div><b>1</b></div>
            <div>2</div>
            <div>3</div>
            <div>4</div>
            <div>5</div>
            <div>▶</div>
          </div>
        </li>
        <li style="text-align: right">
          <input type="submit" value="추가" class="submit">
          <input type="submit" value="삭제" class="submit">
        </li>

      </ul>
    </div>
  </div>
</div>
<%--
<%@include file="../footer.jsp"%>--%>
</body>
</html>
