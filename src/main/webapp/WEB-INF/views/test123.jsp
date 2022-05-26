<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-25
  Time: 오전 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <style>
        #ulranking>li{
            line-height: 50px;
        }
        .ranktext{
            text-align: center;
        }
    </style>

    <!-- 부트스트랩 -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</head>

<body>

<div class="container" style="min-width: 842px">
    <article style="float: left">
        <div class="card">
            <div class="card-body">
                <canvas id="privaterank" width="500" height="524"></canvas>
            </div>
        </div>
    </article>
    <article<%-- style="float: left; --%>width: 500px;">
        <ul id="ulranking" class="card" style=" list-style: none;">
            <li class="ranktext" style="font-size: 30px">1등 000님 500원</li>
            <li class="ranktext"  style="font-size: 30px">2등 000님 300원</li>
            <li class="ranktext"  style="font-size: 30px; margin-bottom: 20px">3등 000님 100원</li>
            <li class="ranktext"  style="font-size: 20px">4등 000님 90원</li>
            <li class="ranktext" style="font-size: 20px">5등 000님 90원</li>
            <li class="ranktext" style="font-size: 20px">6등 000님 90원</li>
            <li class="ranktext" style="font-size: 20px">7등 000님 90원</li>
            <li class="ranktext" style="font-size: 20px">8등 000님 90원</li>
            <li class="ranktext" style="font-size: 20px">9등 000님 90원</li>
            <li class="ranktext" style="font-size: 20px">10등 000님 90원</li>

            <a href="#" style="color: #6c757d; text-decoration-line: none; width: 50px; font-weight: bold; position: relative; left: 500px;">더보기</a>

        </ul>
    </article>

    <article>
        <h1>개인랭킹</h1><br>
        <section class="mypage_sidebar">
            <%--사이드 메뉴--%>
            <article class="mypage_list">
                <ul>
                    <li><a href="main">메인화면</a></li>
                    <li><a href="privaterank">개인랭킹</a></li>
                    <li><a href="companyrank">기업랭킹</a></li>
                </ul>
            </article>
            <%--랭킹 차트 구간--%>

            <%--공지사항 헤더--%>
            <article class="noticeheader">
                <span class="bbsnum">글번호</span>
                <span class="bbstitle">글제목</span>
                <span class="bbsname">작성자</span>
                <span class="bbsdate">작성 시간</span>
                <span class="bbshit">조회수</span><hr>
                <!-- 게시글  -->
                <article class="noticemiddle">
                    <span class="bbsnum">1</span>
                    <span class="bbstitle">집갈뤠ㅜㅜ</span>
                    <span class="bbsname">나다</span>
                    <span class="bbsdate">22.05.23.11.46</span>
                    <span class="bbshit">7</span>
                </article>
            </article>
        </section>
    </article>
</div>



<script>
    data = {
        datasets: [{
            label: '상위 100명의 기부 금액',
            backgroundColor: ['#36A2EB','#4BC0C0','#FFCE56','#E5CCFF','#FF9999'], // 그래프 색
            data: [33,20,18,10,7,12] // 데이터 크기
        }], // 라벨의 이름이 툴팁처럼 마우스가 근처에 오면 나타남
        labels: ['1등','2등','3등','4등','5등', '그외']
    };
    // 도넛형 차트
    var ctx2 = document.getElementById("privaterank");
    var myDoughnutChart = new Chart(ctx2, {
        type: 'doughnut',
        data: data,
        options: {
            title: {
                display: true, text: '상위 n명의 기부 퍼센트 ', fontsize: 20
            },
            legend: {
                position: 'bottom'
            }
        }
    });
</script>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file="footer.jsp"%>
</body>

</html>

