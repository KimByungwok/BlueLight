<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/resources/assets/css/amdinstyles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

        <%--병욱 헤더--%>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--====== Title ======-->
        <title>푸른빛</title>
        <meta name="description" content="">

        <!--====== Favicon Icon ======-->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" type="image/png">

        <!--====== Animate CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">

        <!--====== Tiny slider CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/tiny-slider.css">

        <!--====== glightbox CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/glightbox.min.css">

        <!--====== Line Icons CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/LineIcons.2.0.css">

        <!--====== Selectr CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/selectr.css">

        <!--====== Nouislider CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nouislider.css">

        <!--====== Bootstrap CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-5.0.5-alpha.min.css">

        <!--====== Style CSS ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

        <!--====== notice_style css ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice.css">

        <!--====== donationdetails css ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationdetails.css">

        <!--====== donationreport css ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/donationreport.css">

        <!--====== validation css ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/validation.css">

        <!--====== mypage css ======-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/mypage.css">


        <!--====== BACK TOP TOP PART START ======-->
        <a href="#" class="back-to-top btn-hover"><i class="lni lni-chevron-up"></i></a>
        <!--====== BACK TOP TOP PART ENDS ======-->


        <!--====== Bootstrap js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle-5.0.0.alpha-min.js"></script>

        <!--====== Tiny slider js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/tiny-slider.js"></script>

        <!--====== wow js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>

        <!--====== glightbox js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/glightbox.min.js"></script>

        <!--====== Selectr js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/selectr.min.js"></script>

        <!--====== Nouislider js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/nouislider.js"></script>

        <!--====== Main js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

        <!--====== checkbox js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/checkbox.js"></script>

        <!--====== chart js ======-->
        <script src="${pageContext.request.contextPath}/resources/js/chart.js"></script>

        <%-- carousel js --%>
        <%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>--%>

        <!--====== carousel css ======-->
        <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" >--%>

        <%--랭킹 차트 JS 퍼온거--%>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

        <script>

            //========= glightbox
            const myGallery = GLightbox({
                'href': 'assets/video/Free App Landing Page Template - AppLand.mp4',
                'type': 'video',
                'source': 'youtube', //vimeo, youtube or local
                'width': 900,
                'autoplayVideos': true,
            });

            //======== tiny slider for feature-product-carousel
            tns({
                slideBy: 'page',
                autoplay: false,
                mouseDrag: true,
                gutter: 20,
                nav: false,
                controls: true,
                controlsPosition: 'bottom',
                controlsText: [
                    '<span class="prev"><i class="lni lni-chevron-left"></i></span>',
                    '<span class="next"><i class="lni lni-chevron-right"></i></span>'
                ],
                container: ".feature-product-carousel",
                items: 1,
                center: false,
                autoplayTimeout: 5000,
                swipeAngle: false,
                speed: 400,
                responsive: {
                    768: {
                        items: 2,
                    },

                    992: {
                        items: 2,
                    },

                    1200: {
                        items: 3,
                    }
                }
            });

            //======== tiny slider for testimonial
            tns({
                slideBy: 'page',
                autoplay: false,
                mouseDrag: true,
                gutter: 20,
                nav: true,
                controls: false,
                container: ".testimonial-carousel",
                items: 1,
                center: false,
                autoplayTimeout: 5000,
                swipeAngle: false,
                speed: 400,
                responsive: {
                    768: {
                        items: 2,
                    },
                    1200: {
                        items: 3,
                    }
                }
            });
        </script>

    </head>
    <body class="sb-nav-fixed">

        <nav class="sb-topnav navbar navbar-expand navbar-light bg-light">
            <!-- Navbar Brand-->
            <a class="navbar-brand" href="main">
                <img id="logo" src="/resources/images/logo/header_logo.png" alt="Logo">
            </a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="header-btn d-md-flex" style="margin-bottom: 0">
                <li>
                    <a href="#" class="main-btn account-btn">
                        <span class="d-md-none"><i class="lni lni-user"></i></span>
                        <span class="d-none d-md-block">내 계정</span>
                    </a>
                    <ul class="dropdown-nav">
                        <li><a href="login">로그인</a></li>
                        <li><a href="registerselect">회원가입</a></li>
                        <li><a href="adminmain">어드민</a></li>
                        <li><a href="mypage">내정보</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="index123">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a>
                            <div class="sb-sidenav-menu-heading">Interface</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Layouts
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="layout-static">Static Navigation</a>
                                    <a class="nav-link" href="layout-sidenav-light">Light Sidenav</a>
                                </nav>
                            </div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Pages
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login">Login</a>
                                            <a class="nav-link" href="register">Register</a>
                                            <a class="nav-link" href="password">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401">401 Page</a>
                                            <a class="nav-link" href="404">404 Page</a>
                                            <a class="nav-link" href="500">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                        Start Bootstrap
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Dashboard</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">Primary Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">Warning Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">Success Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">Danger Card</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="#">View Details</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area me-1"></i>
                                        Area Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar me-1"></i>
                                        Bar Chart Example
                                    </div>
                                    <div class="card-body"><canvas id="myBarChart" width="100%" height="40"></canvas></div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                DataTable Example
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon {$java}</td>
                                            <td>System Architect {$java}</td>
                                            <td>Edinburgh {$java}</td>
                                            <td>61 {$java}</td>
                                            <td>2011/04/25 {$java}</td>
                                            <td>$320,800 {$java}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <%@include file="../footer.jsp"%>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="${pageContext.request.contextPath}/resources/assets/js/datatables-simple-demo.js"></script>

    </body>
</html>
