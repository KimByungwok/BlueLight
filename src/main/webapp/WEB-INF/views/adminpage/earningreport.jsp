<%--
  Created by IntelliJ IDEA.
  User: quddn
  Date: 2022-06-06
  Time: 오전 10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <%@include file="../header.jsp"%><br><br><br><br>
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
                                    <input type="submit" value="자세히" style="float: right; width: 80px; padding: 5px;">
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </article>
        </section>
    </div>
</div>

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
                text: '월별 수입 현황',
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


<%@include file="../footer.jsp"%>
</body>
</html>