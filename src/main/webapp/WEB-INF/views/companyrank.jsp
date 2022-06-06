<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-05-17
  Time: 오후 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <%@include file="header.jsp"%><br><br><br><br>

    <style>
        #ulranking>li{
            line-height: 50px;
        }
        .ranktext{
            text-align: center;
        }
    </style>

    <!-- 부트스트랩 -->
    <%--    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>


</head>

<body>

<div class="container-lg" style="min-width: 842px">
    <div class="row">
        <h1>기업랭킹</h1><br>
        <div class="card">
            <div class="card-body">
                <canvas id="privaterank" width="600" height="500" style="display: inline-block"></canvas>
                <ul id="ulranking"  style="list-style: none; width: 500px; float: right">
                    <li class="ranktext" style="font-size: 30px">1등 리민용자 {$java}200,000,000 원</li>
                    <li class="ranktext"  style="font-size: 30px">2등 000님 300원</li>
                    <li class="ranktext"  style="font-size: 30px; margin-bottom: 20px">3등 000님 100원</li>
                    <li class="ranktext"  style="font-size: 20px">4등 000님 90원</li>
                    <li class="ranktext" style="font-size: 20px">5등 000님 90원</li>
                    <li class="ranktext" style="font-size: 20px">6등 000님 90원</li>
                    <li class="ranktext" style="font-size: 20px">7등 000님 90원</li>
                    <li class="ranktext" style="font-size: 20px">8등 000님 90원</li>
                    <li class="ranktext" style="font-size: 20px">9등 000님 90원</li>
                    <li class="ranktext" style="font-size: 20px">10등 000님 90원</li>

                    <li class="ranktext">
                        <a href="#" style="color: #6c757d; text-decoration-line: none; width: 50px; font-weight: bold; position: relative; left: 50px;">더보기</a>
                    </li>
                </ul>
            </div>
        </div>
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
                <span class="bbsnum" style="width: 300px;">등수</span>
                <span class="bbstitle" style="width: 500px;">글제목</span>
                <span class="bbshit" style="width: 300px;">후원 포인트</span><hr>
                <!-- 게시글  -->
                <article class="noticemiddle">
                    <span class="bbsnum" style="width: 300px;">1</span>
                    <span class="bbstitle" style="width: 500px;">집갈뤠ㅜㅜ</span>
                    <span class="bbshit" style="width: 300px;">7</span>
                </article>
            </article>
        </section>
    </div>
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
            responsive:false,
            title: {
                display: true, text: '상위 n명의 기부 퍼센트 ', fontsize: 20
            },
            legend: {
                position: 'bottom'
            }
        }
    });
</script>

<%@include file="footer.jsp"%>
</body>

</html>