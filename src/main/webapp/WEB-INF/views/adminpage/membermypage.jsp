<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-05-27
  Time: 오전 7:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>

<head>
    <%@include file="../header.jsp" %>
    <br><br><br><br>
</head>
<body>
<!-- Cotainer는 그렇게 양쪽 여백을 주게 되어있고  fluid 뭐시기는 여백 없음-->
<div class="container">
    <div class="row">
        <h1>회원정보</h1><br>
        <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap; min-width: 820px;">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="admin">admin</a></li>
                    <li><a href="membersearch">회원검색</a></li>
                    <li><a href="membermodify">회원수정</a></li>
                    <li><a href="membermypage">회원정보</a></li>
                    <li><a href="earningreport">수입현황</a></li>
                </ul>
            </article>
            <%-- 개인 정보 --%>
            <article style="width: calc(100% - 180px);">
                <div>
                    <ul>
                        <!-- 게시판 목록  -->
                        <li>
                            <ul class="mypage_ulBoard_donation">
                                <li>
                                    <ul>
                                        <li>아이디</li>
                                        <li>이름</li>
                                        <li>전화번호</li>
                                        <li>주소</li>
                                        <li>이메일</li>
                                    </ul>
                                </li>
                                <!-- 게시물이 출력될 영역 -->
                                <li>
                                    <ul>
                                        <li>{@java}</li>
                                        <li>{@java}</li>
                                        <li>{@java}</li>
                                        <li>{@java}</li>
                                        <li>2022.06.06.14.17.15</li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <br><br><br>
                    <%--각종 수정 버튼 그룹 start--%>
                    <div style="display: flex; justify-content: flex-end;">
                        <a href="<%--delete--%>"><input type="button" class="btn btn-outline-danger" value="삭제"
                                                        style=""></a>
                        <a href="membermodify"><input type="button" class="btn btn-warning" value="수정"
                                                      style="margin-right: 10px; margin-left: 10px;"></a>
                    </div>
                    <%--각종 수정 버튼 그룹 end--%>
                </div>

                <article>
                    <div>
                        <ul>
                            <!-- 게시판 목록  -->
                            <li>
                                <ul class="mypage_ulBoard_donation">
                                    <li>
                                        <ul>
                                            <li>후원종류</li>
                                            <li>후원명</li>
                                            <li>후원금액</li>
                                            <li>후원자</li>
                                            <li>날짜</li>
                                        </ul>
                                    </li>
                                    <!-- 게시물이 출력될 영역 -->
                                    <li>
                                        <ul>
                                            <li>{@java}</li>
                                            <li>{@java}</li>
                                            <li>{@java}</li>
                                            <li>{@java}</li>
                                            <li>2022.06.06.14.17.15</li>
                                        </ul>
                                    </li>
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
                        </ul>
                        <%--각종 수정 버튼 그룹 start--%>
                        <div style="display: flex; justify-content: flex-end;">
                            <a href="<%--delete--%>"><input type="button" class="btn btn-outline-danger" value="삭제"
                                                            style=""></a>
                            <a href="#"><input type="button" class="btn btn-outline-success" value="추가"
                                                          style="margin-right: 10px; margin-left: 10px;"></a>
                        </div>
                        <%--각종 수정 버튼 그룹 end--%>
                    </div>

                    <div>
                        <ul>
                            <!-- 게시판 목록  -->
                            <li>
                                <ul class="mypage_ulBoard_inquiry">
                                    <li>
                                        <ul>
                                            <li>답변여부</li>
                                            <li>제목</li>
                                            <li>작성자</li>
                                            <li>날짜</li>
                                        </ul>
                                    </li>
                                    <!-- 게시물이 출력될 영역 -->
                                    <li>
                                        <ul>
                                            <li>{@java}</li>
                                            <li>{@java}</li>
                                            <li>{@java}</li>
                                            <li>2022.06.06.14.17.15</li>
                                        </ul>
                                    </li>
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
                        </ul>
                        <%--각종 수정 버튼 그룹 start--%>
                        <div style="display: flex; justify-content: flex-end;">
                            <a href="<%--delete--%>"><input type="button" class="btn btn-outline-danger" value="삭제"
                                                            style=""></a>
                            <a href="#"><input type="button" class="btn btn-outline-success" value="수정?"
                                                          style="margin-right: 10px; margin-left: 10px;"></a>
                        </div>
                        <%--각종 수정 버튼 그룹 end--%>
                    </div>
                </article>
            </article>
        </section>
    </div>
</div>


<%@include file="../footer.jsp" %>
</body>
</html>