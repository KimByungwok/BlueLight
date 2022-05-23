
<!doctype html>
<html class="no-js" lang="en">
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<head>
	<meta charset="utf-8">



	<!--====== Title ======-->
	<title>ClassiList Classified Ads Template</title>

	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

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

<body>
	<!--[if IE]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
    <![endif]-->

	<!--====== PRELOADER PART START ======-->

	<div class="preloader">
		<div class="loader">
			<div class="ytp-spinner">
				<div class="ytp-spinner-container">
					<div class="ytp-spinner-rotator">
						<div class="ytp-spinner-left">
							<div class="ytp-spinner-circle"></div>
						</div>
						<div class="ytp-spinner-right">
							<div class="ytp-spinner-circle"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--====== PRELOADER PART ENDS ======-->

	<!--====== HEADER PART START ======-->

	<header class="header_area">
		<div id="header_navbar" class="header_navbar">
			<div class="container position-relative">
				<div class="row align-items-center">
					<div class="col-xl-12">
						<nav class="navbar navbar-expand-lg">
							<a class="navbar-brand" href="index.jsp">
								<img id="logo" src="${pageContext.request.contextPath}/WEB-INF/views/logo.svg" alt="Logo">
							</a>
							<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
								<span class="toggler-icon"></span>
								<span class="toggler-icon"></span>
								<span class="toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
								<ul id="nav" class="navbar-nav">
									<li class="nav-item">
										<a class="page-scroll active" href="index.jsp">Home</a>
									</li>
									<li class="nav-item">
										<a class="page-scroll" data-toggle="collapse" data-target="#sub-nav1" aria-controls="sub-nav1"
											aria-expanded="false" aria-label="Toggle navigation" href="javascript:void(0)">Pages
											<div class="sub-nav-toggler">
												<span></span>
											</div>
										</a>
										<ul class="sub-menu collapse" id="sub-nav1">
											<li><a href="about.html">About</a></li>
											<li><a href="service.html">Service</a></li>
											<li><a href="category-list.html">Category List</a></li>
											<li><a href="category.html">Category Grid</a></li>
											<li><a href="pricing.html">Pricing</a></li>
											<li><a href="accordions.html">Accordions</a></li>
											<li><a href="product-details.html">Product Details</a></li>
											<li><a href="login.html">Login</a></li>
											<li><a href="signup.html">Sign Up</a></li>
											<li><a href="404">404 Page</a></li>
										</ul>
									</li>
									<li class="nav-item">
										<a class="page-scroll" data-toggle="collapse" data-target="#sub-nav" aria-controls="sub-nav"
											aria-expanded="false" aria-label="Toggle navigation" href="javascript:void(0)">Category
											<div class="sub-nav-toggler">
												<span></span>
											</div>
										</a>
										<ul class="sub-menu collapse" id="sub-nav">
											<li><a href="category.html">Category Grid</a></li>
											<li><a href="category-list.html">Category List</a></li>
										</ul>
									</li>
									<li class="nav-item">
										<a class="page-scroll" href="product-details.html">Product Details</a>
									</li>
								</ul>
							</div>
							<ul class="header-btn d-md-flex">
								<li>
									<a href="#" class="main-btn account-btn">
										<span class="d-md-none"><i class="lni lni-user"></i></span>
										<span class="d-none d-md-block">My Account</span>
									</a>
									<ul class="dropdown-nav">
										<li><a href="dashboard.html">Dashboard</a></li>
										<li><a href="profile-settings.html">Profile Settings</a></li>
										<li><a href="post-ad.html">Post Ad</a></li>
										<li><a href="my-ads.html">My Ads</a></li>
										<li><a href="offers.html">Offers/Messages</a></li>
										<li><a href="payments.html">Payments</a></li>
										<li><a href="favorites.html">Favorites</a></li>
										<li><a href="privacy.html">Privacy</a></li>
										<li><a href="javascript:void(0)">Sign Out</a></li>
									</ul>
								</li>
								<li>
									<a href="post-ad.html" class="main-btn btn-hover d-none d-md-block">Post An Ad</a>
								</li>
							</ul>
						</nav> <!-- navbar -->
					</div>
				</div> <!-- row -->
			</div> <!-- container -->
		</div> <!-- header navbar -->
	</header>

	<!--====== HEADER PART ENDS ======-->

	<!--====== HERO PART START ======-->
	<section id="home" class="hero-area bg_cover">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-lg-9 col-xl-9 col-md-10">
					<div class="text-center hero-content">
						<h1 class="mb-30 wow fadeInUp" data-wow-delay=".2s">You are using free lite version</h1>
						<p class="wow fadeInUp" data-wow-delay=".4s">Please, purchase full version to get all pages, features and sections.</p></br>

						<a href="https://rebrand.ly/gg-classilist/" rel="nofollow" class="main-btn btn-hover">Purchase Now</a>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--====== HERO PART END ======-->

	<!--====== SEARCH PART START ======-->
	<div class="search-area">
		<div class="container">
			<div class="search-wrapper">
				<form action="#">
					<div class="row justify-content-center">
						<div class="col-lg-3 col-sm-5 col-10">
							<div class="search-input">
								<label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
								<input type="text" name="keyword" id="keyword" placeholder="Product keyword">
							</div>
						</div>
						<div class="col-lg-3 col-sm-5 col-10">
							<div class="search-input">
								<label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
								<select name="category" id="category">
									<option value="none" selected disabled>Categories</option>
									<option value="none">Vehicle</option>
									<option value="none">Electronics</option>
									<option value="none">Mobiles</option>
									<option value="none">Furniture</option>
									<option value="none">Fashion</option>
									<option value="none">Jobs</option>
									<option value="none">Real Estate</option>
									<option value="none">Animals</option>
									<option value="none">Education</option>
									<option value="none">Matrimony</option>
								</select>

							</div>
						</div>
						<div class="col-lg-3 col-sm-5 col-10">
							<div class="search-input">
								<label for="location"><i class="lni lni-map-marker theme-color"></i></label>
								<select name="location" id="location">
									<option value="none" selected disabled>Locations</option>
									<option value="none">New York</option>
									<option value="none">California</option>
									<option value="none">Washington</option>
									<option value="none">Birmingham</option>
									<option value="none">Chicago</option>
									<option value="none">Phoenix</option>
								</select>
							</div>
						</div>
						<div class="col-lg-2 col-sm-5 col-10">
							<div class="search-btn">
								<button class="main-btn btn-hover">Search <i class="lni lni-search-alt"></i></button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!--====== SEARCH PART END ======-->

	<!--====== CATEGORY LIST PART START ======-->
	<section class="category-list-area pt-130">
		<div class="container">
			<div class="category-list-wrapper">
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-car"></i>
						</div>
						<h3>Vehicles</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-display"></i>
						</div>
						<h3>Electronics</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-mobile"></i>
						</div>
						<h3>Mobiles</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-leaf"></i>
						</div>
						<h3>Furnitures</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-tshirt"></i>
						</div>
						<h3>Fashion</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-briefcase"></i>
						</div>
						<h3>Jobs</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-apartment"></i>
						</div>
						<h3>Real Estates</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-book"></i>
						</div>
						<h3>Education</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-users"></i>
						</div>
						<h3>Matrimony</h3>
					</a>
				</div>
				<div class="category-list-item">
					<a href="category.html">
						<div class="icon">
							<i class="lni lni-heart"></i>
						</div>
						<h3>Pets</h3>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!--====== CATEGORY LIST PART END ======-->

	<!--====== LATEST PRODUCT PART START ======-->
	<section class="latest-product-area pt-130 pb-110">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-xl-6 col-lg-7 col-md-10">
					<div class="text-center section-title mb-60">
						<h1>Latest Products</h1>
						<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt dolore magna.</p>
					</div>
				</div>
			</div>

			<div class="row">

				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="single-product">
						<div class="product-img">
							<a href="product-details.html">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-1.jpg" alt="">
							</a>
							<div class="product-action">
								<a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
								<a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
							</div>
						</div>

						<div class="product-content">
							<h3 class="name"><a href="product-details.html">Apple iPhone x</a></h3>
							<span class="update">Last Update: 5 hours ago</span>
							<ul class="address">
								<li>
									<a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
								</li>
							</ul>
							<div class="product-bottom">
								<h3 class="price">$120.99</h3>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="single-product">
						<div class="product-img">
							<a href="product-details.html">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-2.jpg" alt="">
							</a>
							<div class="product-action">
								<a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
								<a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
							</div>
						</div>

						<div class="product-content">
							<h3 class="name"><a href="product-details.html">Apple MacBook Air</a></h3>
							<span class="update">Last Update: 5 hours ago</span>
							<ul class="address">
								<li>
									<a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
								</li>
							</ul>
							<div class="product-bottom">
								<h3 class="price">$420.99</h3>
								<a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i> Verified Ad</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="single-product">
						<div class="product-img">
							<a href="product-details.html">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-3.jpg" alt="">
							</a>
							<div class="product-action">
								<a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
								<a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
							</div>
						</div>

						<div class="product-content">
							<h3 class="name"><a href="product-details.html">Cctv camera</a></h3>
							<span class="update">Last Update: 5 hours ago</span>
							<ul class="address">
								<li>
									<a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
								</li>
							</ul>
							<div class="product-bottom">
								<h3 class="price">$80.99</h3>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="single-product">
						<div class="product-img">
							<a href="product-details.html">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-4.jpg" alt="">
							</a>
							<div class="product-action">
								<a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
								<a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
							</div>
						</div>

						<div class="product-content">
							<h3 class="name"><a href="product-details.html">Apple's new iMac</a></h3>
							<span class="update">Last Update: 5 hours ago</span>
							<ul class="address">
								<li>
									<a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
								</li>
							</ul>
							<div class="product-bottom">
								<h3 class="price">$3000.99</h3>
								<a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i> Verified Ad</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="single-product">
						<div class="product-img">
							<a href="product-details.html">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-5.jpg" alt="">
							</a>
							<div class="product-action">
								<a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
								<a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
							</div>
						</div>

						<div class="product-content">
							<h3 class="name"><a href="product-details.html">Best Compact DSLR</a></h3>
							<span class="update">Last Update: 5 hours ago</span>
							<ul class="address">
								<li>
									<a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
								</li>
							</ul>
							<div class="product-bottom">
								<h3 class="price">$290.99</h3>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-6 col-md-6">
					<div class="single-product">
						<div class="product-img">
							<a href="product-details.html">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-6.jpg" alt="">
							</a>
							<div class="product-action">
								<a href="javascript:void(0)"><i class="lni lni-heart"></i></a>
								<a href="javascript:void(0)" class="share"><i class="lni lni-share"></i></a>
							</div>
						</div>

						<div class="product-content">
							<h3 class="name"><a href="product-details.html">10 Future Concept Cars</a></h3>
							<span class="update">Last Update: 5 hours ago</span>
							<ul class="address">
								<li>
									<a href="javascript:void(0)"><i class="lni lni-calendar"></i> 20 June, 2023</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-map-marker"></i> Canada</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-user"></i> Stifen Jon</a>
								</li>
								<li>
									<a href="javascript:void(0)"><i class="lni lni-package"></i> Used</a>
								</li>
							</ul>
							<div class="product-bottom">
								<h3 class="price">$4520.99</h3>
								<a href="javascript:void(0)" class="link-ad"><i class="lni lni-checkmark-circle"></i> Verified Ad</a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!--====== LATEST PRODUCT PART ENDS ======-->

	<!--====== VIDEO PART START ======-->
	<section class="video-area">
		<div class="video-wrapper img-bg">
			<div class="container">
				<div class="text-center video-content">
					<h1 class="text-white mb-60">Learn More About ClassiList</h1>
					<a href="#" class="glightbox video-btn"><i class="lni lni-play"></i></a>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="count-up-wrapper">
				<div class="row">

					<div class="col-lg-3 col-sm-6">
						<div class="single-counter">
							<div class="icon">
								<i class="lni lni-layers"></i>
							</div>
							<span class="count">34864</span>
							<span>Regular Ads</span>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="single-counter">
							<div class="icon">
								<i class="lni lni-map-marker"></i>
							</div>
							<span class="count">867</span>
							<span>Locations</span>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="single-counter">
							<div class="icon">
								<i class="lni lni-users"></i>
							</div>
							<span class="count">56743</span>
							<span>Regular Members</span>
						</div>
					</div>

					<div class="col-lg-3 col-sm-6">
						<div class="single-counter">
							<div class="icon">
								<i class="lni lni-briefcase"></i>
							</div>
							<span class="count">4583</span>
							<span>Premium Ads</span>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--====== VIDEO PART ENDS ======-->

	<!--====== SERVICE PART START ======-->
	<section class="service-area pt-140 pb-110">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-xl-6 col-lg-7 col-md-10">
					<div class="text-center section-title mb-60">
						<h1>Why Choose Us</h1>
						<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore
						magna.</p>
					</div>
				</div>
			</div>

			<div class="row justify-content-center">

				<div class="col-lg-4 col-md-6 col-sm-8 col-11">
					<div class="single-service">
						<div class="icon">
							<i class="lni lni-book"></i>
						</div>
						<div class="service-content">
							<h3>FULLY DOCUMENTED</h3>
							<p>Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-8 col-11">
					<div class="single-service">
						<div class="icon">
							<i class="lni lni-leaf"></i>
						</div>
						<div class="service-content">
							<h3>CLEAN & MODERN DESIGN</h3>
							<p>Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-8 col-11">
					<div class="single-service">
						<div class="icon">
							<i class="lni lni-map"></i>
						</div>
						<div class="service-content">
							<h3>GREAT FEATURES</h3>
							<p>Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-8 col-11">
					<div class="single-service">
						<div class="icon">
							<i class="lni lni-cog"></i>
						</div>
						<div class="service-content">
							<h3>COMPLETELY CUSTOMIZABLE</h3>
							<p>Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-8 col-11">
					<div class="single-service">
						<div class="icon">
							<i class="lni lni-pointer-up"></i>
						</div>
						<div class="service-content">
							<h3>USER FRIENDLY</h3>
							<p>Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 col-sm-8 col-11">
					<div class="single-service">
						<div class="icon">
							<i class="lni lni-laptop-phone"></i>
						</div>
						<div class="service-content">
							<h3>FULLY RESPONSIVE</h3>
							<p>Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!--====== SERVICE PART ENDS ======-->

	<!--====== FEATURE PRODUCT PART START ======-->
	<section class="feature-product-area bg_cover">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-lg-6 col-md-10">
					<div class="text-center section-title mb-60">
						<h1>Featured Products</h1>
						<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.</p>
					</div>
				</div>
			</div>

			<div class="product-carousel-wrapper">
				<div class="row feature-product-carousel">

					<div class="col-lg-4 col-md-6">
						<div class="single-product">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-1.jpg" alt="">
							</div>

							<div class="product-content">
								<div class="rating-wrapper">
									<h5 class="price theme-color">$120.99</h5>
									<div class="rating">
										<span>2 Review</span>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star"></i>
									</div>
								</div>
								<h3 class="name"><a href="product-details.html">Apple iPhone x</a></h3>
								<p class="sort-des">Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam.</p>
								<div class="product-bottom">
									<a href="javascript:void(0)" class="address-link"><i class="lni lni-map-marker"></i> United State of America</a>
									<span class="theme-color"><i class="lni lni-heart"></i></span>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-product">
							<div class="product-img">
								<a href="javascript:void(0)" class="badge">New</a>
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-2.jpg" alt="">
							</div>

							<div class="product-content">
								<div class="rating-wrapper">
									<h5 class="price theme-color">$320.99</h5>
									<div class="rating">
										<span>2 Review</span>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star"></i>
									</div>
								</div>
								<h3 class="name"><a href="product-details.html">Best Compact DSLR</a></h3>
								<p class="sort-des">Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam.</p>
								<div class="product-bottom">
									<a href="javascript:void(0)" class="address-link"><i class="lni lni-map-marker"></i> United State of America</a>
									<span class="theme-color"><i class="lni lni-heart"></i></span>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-product">
							<div class="product-img">
								<a href="javascript:void(0)" class="badge bottom">25% Discount</a>
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-3.jpg" alt="">
							</div>

							<div class="product-content">
								<div class="rating-wrapper">
									<h5 class="price theme-color">$90 <del>$120</del></h5>
									<div class="rating">
										<span>2 Review</span>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star"></i>
									</div>
								</div>
								<h3 class="name"><a href="product-details.html">Cctv camera</a></h3>
								<p class="sort-des">Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam.</p>
								<div class="product-bottom">
									<a href="javascript:void(0)" class="address-link"><i class="lni lni-map-marker"></i> United State of America</a>
									<span class="theme-color"><i class="lni lni-heart"></i></span>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-4 col-md-6">
						<div class="single-product">
							<div class="product-img">
								<img src="${pageContext.request.contextPath}/resources/images/product/l-product-4.jpg" alt="">
							</div>

							<div class="product-content">
								<div class="rating-wrapper">
									<h5 class="price theme-color">$1120.99</h5>
									<div class="rating">
										<span>2 Review</span>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star-filled"></i>
										<i class="lni lni-star"></i>
									</div>
								</div>
								<h3 class="name"><a href="product-details.html">Apple's new iMac</a></h3>
								<p class="sort-des">Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam.</p>
								<div class="product-bottom">
									<a href="javascript:void(0)" class="address-link"><i class="lni lni-map-marker"></i> United State of America</a>
									<span class="theme-color"><i class="lni lni-heart"></i></span>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!--====== FEATURE PRODUCT PART ENDS ======-->

	<!--====== PRICING PRODUCT PART START ======-->
	<section class="pricing-area pt-140 pb-140">
		<div class="container">
			<div class="row">
				<div class="mx-auto col-xl-6 col-lg-7 col-md-10">
					<div class="text-center section-title mb-90">
						<h1>Select a Package</h1>
						<p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr sed diam nonumy eirmod tempor invidunt ut labore et dolore magna.</p>
					</div>
				</div>
			</div>

			<div class="row justify-content-center">

				<div class="col-lg-4 col-md-8 col-sm-10 col-11">
					<div class="single-pricing">
						<div class="icon">
							<i class="lni lni-layers"></i>
						</div>
						<h3 class="name">Basic Pack</h3>
						<ul>
							<li>Free ad posting</li>
							<li>6 Featured ads availability</li>
							<li>For 30 days</li>
							<li>100% Secure!</li>
						</ul>
						<h2 class="price"> <sup>$</sup> 20.00</h2>
						<span class="time">Monthly</span>

						<a href="javascript:void(0)" class="main-btn btn-hover">Buy Now</a>
					</div>
				</div>

				<div class="col-lg-4 col-md-8 col-sm-10 col-11">
					<div class="single-pricing standard">
						<div class="icon">
							<i class="lni lni-leaf"></i>
						</div>
						<h3 class="name">Standard Pack</h3>
						<ul>
							<li>Free ad posting</li>
							<li>9 Featured ads availability</li>
							<li>For 30 days</li>
							<li>100% Secure!</li>
						</ul>
						<h2 class="price"> <sup>$</sup> 29.00</h2>
						<span class="time">Monthly</span>

						<a href="javascript:void(0)" class="main-btn btn-hover">Buy Now</a>
					</div>
				</div>

				<div class="col-lg-4 col-md-8 col-sm-10 col-11">
					<div class="single-pricing">
						<div class="icon">
							<i class="lni lni-diamond-alt"></i>
						</div>
						<h3 class="name">Premium Pack</h3>
						<ul>
							<li>Free ad posting</li>
							<li>20 Featured ads availability</li>
							<li>For 30 days</li>
							<li>100% Secure!</li>
						</ul>
						<h2 class="price"> <sup>$</sup> 49.00</h2>
						<span class="time">Monthly</span>

						<a href="javascript:void(0)" class="main-btn btn-hover">Buy Now</a>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!--====== PRICING PRODUCT PART ENDS ======-->

	<!--====== SUBSCRIBE PRODUCT PART START ======-->
	<section class="subscribe-area">
		<div class="container">
			<div class="subscribe-wrapper bg_cover">
				<div class="row align-items-center">
					<div class="col-lg-7">
						<div class="subscribe-content section-title">
							<h1 class="text-white">Subscribe Our Newsletter</h1>
							<p class="text-white">Buy and sell everything from used cars to mobile phones and computer or search for property.</p>
						</div>
					</div>
					<div class="col-lg-5">
						<div class="subscribe-form-wrapper">
							<form action="#" class="subscribe-form">
								<input type="email" name="sub-email" placeholder="Enter your Email">
								<button><i class="lni lni-telegram-original"></i></button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<!--====== SUBSCRIBE PRODUCT PART ENDS ======-->
				<div class="mx-auto col-lg-9 col-xl-9 col-md-10 pt-60 mb-60">
					<div class="text-center hero-content">
						<h1 class="mb-30 wow fadeInUp" data-wow-delay=".2s">만 드 는 중 ㅋ</h1>
						<p class="wow fadeInUp" data-wow-delay=".4s">설명 어쩌구 저쩌구</p></br>

						<a href="https://rebrand.ly/gg-classilist/" rel="nofollow" class="main-btn btn-hover">누르던지ㅋ</a>
					</div>


<!--====== 푸터 시작점 ======-->
	<footer class="footer-area">
		<div class="widget-wrapper">
			<div class="map-img">
				<img src="${pageContext.request.contextPath}/resources/images/footer/map-img.svg" alt="">
			</div>
			<div class="container">
				<div class="row">
<%--푸터 로고, sns링크 --%>
					<div class="col-xl-4 col-md-7">
						<div class="footer-widget about">
							<a href="index" class="d-inline-block mb-30">
								<img src="${pageContext.request.contextPath}/WEB-INF/views/logo.svg">
							</a>
							<ul class="social">
								<li><a href="index"><i class="lni lni-facebook-filled"></i></a></li>
								<li><a href="index"><i class="lni lni-twitter-filled"></i></a></li>
								<li><a href="index"><i class="lni lni-instagram-filled"></i></a></li>
								<li><a href="index"><i class="lni lni-linkedin-original"></i></a></li>
							</ul>
						</div>
					</div>
<%--푸터 퀵 링크--%>
					<div class="col-xl-2 col-md-4 order-md-2 order-xl-1 col-sm-6">
						<div class="footer-widget">
							<h4>Quick Link</h4>
							<ul class="link">
								<li><a href="index">메인화면</a></li>
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
								<li><a href="javascript:void(0)">도움말</a></li>
							</ul>
						</div>
					</div>
<%--푸터 회사 정보--%>
					<div class="col-xl-2 col-md-4 order-md-4 order-xl-3 col-sm-6">
						<div class="footer-widget">
							<h4>Company Info</h4>
							<ul class="link">
								<li><a href="javascript:void(0)">회사 소개</a></li>
								<li><a href="javascript:void(0)">회사 연락처</a></li>
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
									경민대학교 효행관 401호
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