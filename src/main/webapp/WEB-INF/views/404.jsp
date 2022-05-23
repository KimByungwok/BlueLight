<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
</head>
<body>
<%@include file="header.jsp"%>

    <!--====== Title ======-->
    <title>404 Page | 푸른빛</title>

    <!--====== BANNER PART START ======-->
    <section class="banner-area bg_cover">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="banner-content">
                        <h1 class="text-white">404 Page</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="main">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">404 Page</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--====== BANNER PART END ======-->

    <!--====== 404 PRODUCT PART START ======-->
    <section class="page-404-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="text-center content-404">
                        <div class="image mb-50">
                            <img src="${pageContext.request.contextPath}/resources/images/404/404-img.svg" alt="">
                        </div>
                        <a href="main"><h1>Page Not Found</h1></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--====== 404 PRODUCT PART ENDS ======-->
<%@include file="footer.jsp"%>
</body>
</html>
