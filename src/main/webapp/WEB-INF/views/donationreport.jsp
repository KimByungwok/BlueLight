<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>

<head>
    <%@include file="header.jsp"%><br><br><br><br>
    <!--====== qudwok_style css ======-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationreport.css">

</head>
<body>

<div class="container">
    <div class="row">
        <h1 style="text-align: center;">기부수입</h1><br><br><br><br><br>
        <div class="pie-chart2" style="justify-content: center;">
            <span class="center"><p>총액 : 145,077,802,895<%--{$ java}--%> 원</p></span>
        </div>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="notice">공지사항</a></li>
                    <li><a href="sponsorschedule">후원일정</a></li>
                    <li><a href="donationreport">기부현황</a></li>
                </ul>
            </article>
            <%--기부현황 헤더--%>
            <article class="reportheader">
                <span class="bbsdivision"><h4>구분</h4></span>
                <span class="bbssum"><h4>금액(원)</h4></span>
                <span class="bbsratio"><h4>비율</h4></span><hr>
                <!-- 게시글  -->
                <article class="reportmiddle">
                    <span class="bbshead">후원금수입</span><br><hr>
                    <span class="bbsdivision">정기 후원</span>
                    <span class="bbssum">120,797,239,724 원</span>
                    <span class="bbsratio">83.3%</span><hr>
                </article>

                <article class="reportmiddle">

                    <span class="bbsdivision">현장 후원</span>
                    <span class="bbssum">5,637,096,515원 </span>
                    <span class="bbsratio">3,9%</span><hr>
                </article>

                <article class="reportmiddle">

                    <span class="bbsdivision">기업 후원</span>
                    <span class="bbssum">3,795,954,009원 </span>
                    <span class="bbsratio">2.6%</span><hr>
                </article>

                <article class="reportmiddle">

                    <span class="bbsdivision">익명 후원</span>
                    <span class="bbssum">448,221,620원 </span>
                    <span class="bbsratio">0.3%</span><hr>
                </article>

                <article class="reportbottom">
                    <span class="bbstotaldivision">소계</span>
                    <span class="bbstotal">130,678,511,868원</span>
                    <span class="bbstotalratio">90.1%</span><hr>
                </article>

                <article class="reportbottom">
                    <span class="bbshead"><h5>후원금 외 수입</h5></span><br><hr>
                    <span class="bbsdivision">본부 지원금</span>
                    <span class="bbssum">13,807,702,591원 </span>
                    <span class="bbsratio">9.5%</span><hr>
                </article>
                <article class="reportmiddle">

                    <span class="bbsdivision">이자수익 및 기타</span>
                    <span class="bbssum">5,637,096,515원 </span>
                    <span class="bbsratio">0.2%</span><hr>
                </article>
                <article class="reportmiddle">

                    <span class="bbsdivision">수익사업</span>
                    <span class="bbssum">291,047,061원 </span>
                    <span class="bbsratio">0.2%</span><hr>
                </article>

                <article class="reportbottom">
                    <span class="bbstotaldivision">소계</span>
                    <span class="bbstotal">14,399,291,027원</span>
                    <span class="bbstotalratio">9.9%</span><hr>
                </article>
                <article class="reportbottom">
                    <span class="bbstotaldivision"><h4>총액</h4></span>
                    <span class="bbstotal"><h4>145,077,802,895원</h4></span>
                    <span class="bbstotalratio"><h4>100%</h4></span><hr>
                </article>
            </article>
        </section>


        <%--기부현황 지출부분--%>
        <h1 style="text-align: center;">지출 현황</h1><br><br><br><br><br>
        <div class="pie-chart2" style="justify-content: center;">
            <span class="center"><p>총지출 :145,077,802,895<%--{$ java}--%> 원</p></span>
        </div>
        <section class="mypage_sidebar">
            <article class="mypage_listbottom">

            </article>
            <%--기부현황 헤더--%>
            <article class="reportheader">
                <span class="bbsdivision"><h4>구분</h4></span>
                <span class="bbssum"><h4>금액(원)</h4></span>
                <span class="bbsratio"><h4>비율</h4></span><hr>
                <!-- 게시글  -->
                <article class="reportmiddle">
                    <span class="bbshead"><h5>목적사업</h5></span><br><hr>
                    <span class="bbsdivision">개발도상국 지원비</span>
                    <span class="bbssum">110,589,361,359 원</span>
                    <span class="bbsratio">76.2%</span><hr>
                </article>

                <article class="reportmiddle">
                    <span class="bbshead"><h5>공익목적사업</h5></span><br><hr>
                    <span class="bbsdivision">아동권리 후원</span>
                    <span class="bbssum">14,590,900,319원 </span>
                    <span class="bbsratio">10.1%</span><hr>
                </article>

                <article class="reportmiddle">

                    <span class="bbsdivision">인건비 및 관리 운영비</span>
                    <span class="bbssum">5,780,412,789원 </span>
                    <span class="bbsratio">4.0%</span><hr>
                </article>

                <article class="reportmiddle">

                    <span class="bbsdivision">본부 지원금</span>
                    <span class="bbssum">13,807,702,591원 </span>
                    <span class="bbsratio">9.5%</span><hr>
                </article>

                <article class="reportbottom">

                    <span class="bbsdivision">기타</span>
                    <span class="bbssum">13,209,367원 </span>
                    <span class="bbsratio">0.0%</span><hr>
                </article>
                <article class="reportmiddle">
                    <span class="bbshead"><h5>기타</h5></span><br><hr>
                    <span class="bbsdivision">수익 사업비용</span>
                    <span class="bbssum">277,203,091원 </span>
                    <span class="bbsratio">0.2%</span><hr>
                </article>
                <article class="reportmiddle">

                    <span class="bbsdivision">당기운영이익</span>
                    <span class="bbssum">19,013,379원 </span>
                    <span class="bbsratio">0.0%</span><hr>
                </article>


            </article>
        </section>


        <%--공지사항 중앙--%>
        <ul class="pagination" style="justify-content: center;">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item "><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
        </ul>
    </div>
</div>
<%@include file="footer.jsp"%>

</body>
</html>

