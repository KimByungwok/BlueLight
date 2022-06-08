<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <%@include file="../header.jsp" %>
    <br><br><br><br>
</head>
<body>
<div class="container">
    <div class="row">
        <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap; min-width: 820px;">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="earningreport">admin_main</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                </ul>
            </article>
            <%--사이드 메뉴--%>
            <article style="width: calc(100% - 180px); min-width: 570px">
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
                            <input type="submit" value="정보 수정" class="submit" onclick="location.href='membermodify'"
                                   style="padding: 5px; width: 80px;">
                            <input type="submit" value="회원 삭제" class="submit" style="padding: 5px; width: 80px;">
                        </li>
                    </ul>
                </div>

                <div>
                    <ul>
                        <!-- 게시판 목록  -->
                        <li>
                            <ul id="memberdetail_ulBoard_donation">
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
                            <input type="submit" value="추가" class="submit" style="padding: 5px; width: 60px;">
                            <input type="submit" value="삭제" class="submit" style="padding: 5px; width: 60px;">
                        </li>
                    </ul>
                </div>
                <div>
                    <ul>
                        <!-- 게시판 목록  -->
                        <li>
                            <ul id="memberdetail_ulBoard_inquiry">
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
                            <input type="submit" value="추가" class="submit" style="padding: 5px; width: 60px;">
                            <input type="submit" value="삭제" class="submit" style="padding: 5px; width: 60px;">
                        </li>

                    </ul>
                </div>
            </article>
        </section>
    </div>
</div>


<%@include file="../footer.jsp" %>
</body>
</html>