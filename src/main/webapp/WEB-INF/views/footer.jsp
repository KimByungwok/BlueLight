<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!--===== 푸터 시작점 ======-->
<footer class="footer-area">
    <div class="widget-wrapper">
        <div class="map-img">
            <img src="${pageContext.request.contextPath}/resources/images/footer/map-img.svg" alt="">
        </div>
        <div class="container" style="margin-top: 30px;">
            <div class="row">
                <%--푸터 로고, sns링크 --%>
                <div class="col-xl-4 col-md-7">
                    <div class="footer-widget about">
                        <a href="index" class="d-inline-block mb-30">
                            <img src="${pageContext.request.contextPath}/resources/images/logo/footer_logo.png">
                        </a>
                        <ul class="social">
                            <li><a href="https://www.facebook.com/profile.php?id=100002328788196"><i class="lni lni-facebook-filled"></i></a></li>
                            <li><a href="index"><i class="lni lni-twitter-filled"></i></a></li>
                            <li><a href="https://www.instagram.com/qudwok98/"><i class="lni lni-instagram-filled"></i></a></li>

                        </ul>
                    </div>
                </div>
                <%--푸터 퀵 링크--%>
                <div class="col-xl-2 col-md-4 order-md-2 order-xl-1 col-sm-6">
                    <div class="footer-widget">
                        <h4>Quick Link</h4>
                        <ul class="link">
                            <li><a href="main">메인화면</a></li>
                        </ul>
                    </div>
                </div>
                <%--푸터 서포트--%>
                <div class="col-xl-2 col-md-4 order-md-3 order-xl-2 col-sm-6">
                    <div class="footer-widget">
                        <h4>Support</h4>
                        <ul class="link">
                            <li><a href="javascript:void(0)">실시간 상담</a></li>
                            <li><a href="javascript:void(0)">고객센터</a></li>
                            <li><a href="javascript:void(0)">QnA</a></li>
                        </ul>
                    </div>
                </div>
                <%--푸터 회사 정보--%>
                <div class="col-xl-2 col-md-4 order-md-4 order-xl-3 col-sm-6">
                    <div class="footer-widget">
                        <h4>Company Info</h4>
                        <ul class="link">
                            <li><a href="javascript:void(0)">회사소개</a></li>
                            <li><a href="javascript:void(0)">약관정보</a></li>
                        </ul>
                    </div>
                </div>
                <%--푸터 연락처--%>
                <div class="col-xl-2 col-md-5 order-md-1 order-xl-4 col-sm-6">
                    <div class="footer-widget">
                        <h4>연락처</h4>
                        <ul>
                            <li>
                                <span>Phone:</span>
                                010-8316-2938
                            </li>
                            <li>
                                <span>Email:</span>
                                quddnr2302@kyungmmin.ac.kr
                            </li>
                            <li>
                                <span>Location:</span>
                                경민대학교 효행관 401
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--푸터 디자인 바이 뭐시기 적는곳--%>
    <%--<div class="copy-right">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="text-center">
                        <p>Designed & Developed By <a href="https://graygrids.com/" rel="nofollow" target="_blank">GrayGrids</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
</footer>
<!--====== 푸터 끝 ======-->
</div>

</body>
</html>
