<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-06-09
  Time: 오후 1:27
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
    <section class="mypage_sidebar" style="display: flex; flex-wrap: wrap;">
        <%--사이드 메뉴 start--%>
        <article class="mypage_list">
            <ul>
                <li><a href="admin">admin</a></li>
                <li><a href="membersearch">회원검색</a></li>
                <li><a href="membermodify">회원수정</a></li>
                <li><a href="membermypage">회원정보</a></li>
                <li><a href="earningreport">수입현황</a></li>
            </ul>
        </article>
        <%--사이드 메뉴 end--%>
        <%-- 관리자 메인 start--%>
        <article class="col-xl-9">
            회원검색 :
            <%--검색 메뉴 start--%>
            <select name="searchmenu" style="background-color: #cccccc">
                <option value="membername" selected>회원 이름</option>
                <option value="memberid">회원 아이디</option>
                <option value="memberphone">회원 전화번호</option>
            </select>
            <%--검색 메뉴 end--%>
            <%--검색창 start--%>
            <input type="text" id='txtSearch' placeholder="회원을 검색하세용"
                   style="width: 400px; border: solid 1px; border-radius: 10px;"/>
            <input type='button' class="btn-outline-dark" id="btnSearch" value='검색' style="width: 100px;"/>
            <hr>
            <%--검색창 end--%>
            <!-- 최근 후원 목록 start -->
            <div>
                <ul>
                    <li>
                        <ul id="memberdetail_ulBoard_donation">
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
            </div>
            <!-- 최근 후원 목록 end -->
            <!-- 최근 문의 목록 start -->
            <div>
                <ul>
                    <li>
                        <ul id="memberdetail_ulBoard_inquiry">
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
            </div>
            <!-- 최근 문의 목록 end -->

            <%--각종 수정 버튼 그룹 start--%>
            <div style="display: flex;justify-content: center;">
                <%--글작성 메뉴 start--%>
                <select name="searchmenu" style="background-color: #cccccc; width: 100px;height: 48px; margin:10px;">
                    <option value="notice" selected>공지사항</option>
                    <option value="faq">FAQ</option>
                    <option value="sponsorschedule">후원일정</option>
                    <option value="donation">후원하기</option>
                    <option value="livedonation">현장기부</option>
                </select>
                <%--글작성 메뉴 end--%>
                <a href="<%--@{java}--%>"><input type="button" id="trigger" class="btn btn-outline-primary btn-lg" value="글작성"></a>
            </div>
            <%--각종 수정 버튼 그룹 end--%>

            <%-- 수입현황 차트 start--%>
            <article>
                <div style="margin-bottom: 10px;">
                    <ul>
                        <li style="margin-bottom: 20px;">
                            <canvas id="month" width="500px" height="200px"></canvas>
                        </li>
                        <li style="min-width: 756px; margin-bottom: 20px; float: left">
                            <div style="width: 400px; height: 400px; float: left;">
                                <canvas id="year" width="400px" height="400px"></canvas>
                            </div>
                            <ul style="min-width: 200px; font-size: 20px; margin: 20px; padding: 20px; border-width: 0.5px; border-style: solid; border-color: gray; overflow: hidden;">
                                <li style="margin-bottom: 20px; padding-bottom: 10px; margin-top: 30px; border-width: 1px; border-bottom: solid; border-color: gray;">
                                    총 수입 : {@java} 원
                                </li>
                                <li style="margin-bottom: 20px">
                                    후원금 : {@java} 원
                                </li>
                                <li style="margin-bottom: 20px">
                                    사업수입금 : {@java} 원
                                </li>
                                <li style="margin-bottom: 20px">
                                    지원금 : {@java} 원
                                </li>
                                <li style="margin-bottom: 20px">
                                    기타 : {@java} 원
                                </li>
                                <li>
                                    <input type="button" class="btn btn-outline-dark" value="자세히" style="float: right; width: 80px; padding: 5px; border:solid 1px;">
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </article>
            <%--수입차트 script start--%>
            <script>
                data1 = {
                    datasets: [{
                        label: '월별 수입 현황',
                        fill: false,
                        borderColor: 'rgb(75, 192, 192)', // 그래프 색
                        data: [40, 30, 25, 50, 60, 65], // 데이터 크기
                        tension: 0
                    }],
                    labels: ['1월','2월','3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월']
                };
                var ctx1 = document.getElementById("month");
                var ChartMonth = new Chart(ctx1, {
                    type: 'line',
                    data: data1,
                    options: {
                        title: {
                            display: true,
                            text: '월별 수입 현황 (억)',
                            fontsize: 20
                        },
                        legend: {
                            position: 'bottom',
                            display: false
                        },
                    }
                });

                data2 = {
                    datasets: [{
                        label: '올해 총 수입 현황',
                        fill: false,
                        backgroundColor: ['rgb(255,222,255)', 'rgb(222,255,255)', 'rgb(239,222,255)', 'rgb(222,239,222)'], // 그래프 색
                        data: [81.3, 15.9, 2.2, 0.6], // 데이터 크기
                    }],
                    labels: ['후원금', '사업수익금', '지원금', '기타']
                };
                var ctx2 = document.getElementById("year");
                var ChartYear = new Chart(ctx2, {
                    type: 'pie',
                    data: data2,
                    options: {
                        title: {
                            display: true,
                            text: '올해 총 수입 현황',
                            fontsize: 20
                        },
                        legend: {
                            position: 'bottom',
                            display: false
                        },
                    }
                });
            </script>
            <%--수입차트 script end--%>
            <%-- 수입현황 차트 end--%>
        </article>

    </section>
</div>

<%@include file="../footer.jsp" %>
</body>
</html>
