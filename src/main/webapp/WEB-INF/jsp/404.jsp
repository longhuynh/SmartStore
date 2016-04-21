<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<html lang="en-US">
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width" />

<!-- Title -->
<title>Max Shop</title>

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,700,600,800'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Quattrocento:400,700'
	rel='stylesheet' type='text/css'>

<!-- Style Sheet-->
<link rel="stylesheet" href="resources/css/tooltipster.css"
	type="text/css">
<link href="resources/css/ie.css" rel="stylesheet" media="all"
	type="text/css">
<link rel="stylesheet" href="resources/css/bootstrap.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<link rel="stylesheet" href="resources/css/responsive.css"
	type="text/css">
<link rel="stylesheet" href="resources/css/prettyPhoto.css"
	type="text/css">


<!-- favicon -->
<link rel="shortcut icon" href="resources/images/favicon.jpg">

<!-- Include the HTML5 shiv print polyfill for Internet Explorer browsers 8 and below -->
<!--[if lt IE 10]><script src="resources/js/html5shiv-printshiv.js" media="all"></script><![endif]-->
</head>
<body>
	<!-- HEADER -->

	<div class="header-bar">
		<div class="container">
			<div class="row">
				<div class="pric-icon span2">
					<a href="#" class="active">&#x20ac;</a> <a href="#">&#xa3;</a> <a
						href="#">&#36;</a>
				</div>

				<div class="span10 right">
					<div class="social-strip">
						<ul>

						</ul>
					</div>

					<div class="languages">
						<a href="#" class="english active"><img
							src="resources/images/english.png" alt=""></a> <a href="#"
							class="german"><img src="resources/images/german.png" alt=""></a>
						<a href="#" class="japan"><img
							src="resources/images/japan.png" alt=""></a> <a href="#"
							class="turkish"><img src="resources/images/turkish.png"
							alt=""></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="header">


		<div class="header-top">
			<div class="container">
				<div class="row">

					<div class="span5">
						<div class="logo">
							<a href=" <spring:url value="/" />"><img
								src="resources/images/logo.png" alt=""></a>
							<h1>
								<a href=" <spring:url value="/" />">Welcom to<span>
										Max Shop </span> USA
								</a>
							</h1>
						</div>
					</div>

					<div class="span5">
						<form:form class="search-form" action="/smartstore/search"
							method="get">

							<input type="text" name="key" id="key"
								placeholder="Type and hit enter">
							<input type="submit" value="">
						</form:form>


					</div>

					<div class="span2">
						<div class="cart">
							<ul>
								<li class="first"><a
									href=" <spring:url value="/checkout" />"></a><span></span></li>
								<li>0 item(s)</li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>


	</div>

	<!-- HEADER -->

	<!-- MENU -->
	<header>
		<div class="container">
			<div class="row">
				<div class="span12">
					<nav class="desktop-nav">
						<ul class="clearfix">

						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- MENU -->

	<!-- BAR -->
	<div class="bar-wrap">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="title-bar">
						<h1>404</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- BAR -->

	<div class="product_wrap">
		<div class="container">

			<div class="row">
				<div class="span12">
					<br /> Go to <a href=" <spring:url value="/index" />" class="check">Home
						page</a> <br /><br />
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->

	<div id="footer">


		<div class="footer-wrap">
			<div class="container">
				<div class="row">

					<div class="footer clearfix">

						<div class="span3">
							<div class="widget">
								<h3>Customer Service</h3>
								<ul>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Delivery Information</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="span3">
							<div class="widget">
								<h3>Information</h3>
								<ul>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Delivery Information</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="span3">
							<div class="widget">
								<h3>My Account</h3>
								<ul>
									<li><a href="#">My Account</a></li>
									<li><a href="#">Order History</a></li>
									<li><a href="#">Wish List</a></li>
									<li><a href="#">Newsletter</a></li>
								</ul>
							</div>
						</div>

						<div class="span3">
							<div class="widget">
								<h3>Contact us</h3>
								<ul>
									<li>support@maxshop.com</li>
									<li>+38649 123 456 789 00</li>
									<li>Lorem ipsum address street no 24 b41</li>
								</ul>
							</div>
						</div>

					</div>
				</div>

				<div class="row">
					<footer class="clearfix">
						<div class="span5">
							<p>© 2013 Maxshop Design, All Rights Reserved</p>
						</div>
						<div class="span2 back-top">
							<a href="#"> <img src="resources/images/back.png" alt=""></a>
						</div>
						<div class="span5">
							<div class="social-icon">
								<a class="rss" href=""></a> <a class="twet"
									href="https://about.twitter.com"></a> <a class="fb"
									href="https://www.facebook.com"></a> <a class="google"
									href="https://www.google.com"></a> <a class="pin" href="">
								</a>
							</div>
						</div>
					</footer>
				</div>
			</div>
		</div>
	</div>

	<!-- FOOTER -->

	<!-- Scripts -->
	<script src="resources/js/jquery-1.9.1.min.js"></script>
	<script src="resources/js/jquery-ui.js"></script>
	<script src="resources/js/jquery.cycle.all.js"></script>
	<script src="resources/js/modernizr.custom.17475.js"></script>
	<script src="resources/js/jquery.elastislide.js"></script>
	<script src="resources/js/jquery.carouFredSel-6.0.4-packed.js"></script>
	<script src="resources/js/jquery.selectBox.js"></script>
	<script src="resources/js/jquery.tooltipster.min.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/custom.js"></script>
</body>
</html>


