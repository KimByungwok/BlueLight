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
                                    <ul style="">
                                        <li>관리자권한</li>
                                        <li>아이디</li>
                                        <li>이름</li>
                                        <li>전화번호</li>
                                    </ul>
                                </li>
                                <!-- 게시물이 출력될 영역 -->
                                <li>
                                    <c:forEach items="${list}" var="search" varStatus="status">
                                        <ul style="display: flex; justify-content: space-around;">
                                            <c:choose>
                                                <c:when test="${search.m_flag eq '0'}">
                                                    <li>유저</li>
                                                </c:when>
                                                <c:when test="${search.m_flag eq '1'}">
                                                    <li>관리자</li>
                                                </c:when>
                                            </c:choose>
                                            <li><c:out value="${search.m_id}"/></li>
                                            <li><c:out value="${search.m_name}"/></li>
                                            <li><c:out value="${search.m_phone}"/></li>
                                        </ul>
                                    </c:forEach>
                                </li>
                            </ul>
                            <ul class="mypage_ulBoard_donation">
                                <li>
                                    <c:forEach items="${list}" var="search" varStatus="status">
                                    <ul>
                                        <li style="width:33%;text-align: center;">주소</li>
                                        <li style="width:33%;text-align: center;">이메일</li>
                                        <li style="width:34%;text-align: center;">사업자번호</li>
                                    </ul>
                                </li>
                                <li>
                                    <ul>
                                        <li style="width:33%; text-align: center;"><c:out value="${search.m_address}"/></li>
                                        <li style="width:33%; text-align: center;"><c:out value="${search.m_email}"/></li>
                                        <c:choose>
                                            <c:when test="${empty search.m_s_number}">
                                                <li  style="width:34%; text-align: center;">사업자아님</li>
                                            </c:when>
                                            <c:when test="${not empty search.m_s_number}">
                                                <li style="width:34%; text-align: center;"><c:out
                                                        value="${search.m_s_number}"/></li>
                                            </c:when>
                                        </c:choose>
                                    </ul>
                                </li>
                                </c:forEach>
                            </ul>
                        </li>
                    </ul>
                    <br><br><br>
                    <%--각종 수정 버튼 그룹 start--%>
                    <div style="display: flex; justify-content: flex-end;">
                        <a href="<%--delete--%>"><input type="button" class="btn btn-outline-danger" value="삭제"
                                                        style=""></a>
                        <a href="membermodify?fId=${fId}"><input type="button" class="btn btn-warning" value="수정"
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
                                            <li style="width:20%;text-align: center;">후원종류</li>
                                            <li style="width:20%;text-align: center;">후원명</li>
                                            <li style="width:20%;text-align: center;">후원금액</li>
                                            <li style="width:20%;text-align: center;">후원자</li>
                                            <li style="width:20%;text-align: center;">날짜</li>
                                        </ul>
                                    </li>
                                    <!-- 게시물이 출력될 영역 -->
                                    <li>
                                        <ul>
                                            <li style="width:20%;text-align: center;">{@java}</li>
                                            <li style="width:20%;text-align: center;">{@java}</li>
                                            <li style="width:20%;text-align: center;">{@java}</li>
                                            <li style="width:20%;text-align: center;">{@java}</li>
                                            <li style="width:20%;text-align: center;">2022.06.06.14.17.15</li>
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