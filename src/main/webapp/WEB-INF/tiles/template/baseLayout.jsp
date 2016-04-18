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
	<tiles:insertAttribute name="header" />
	<!-- HEADER -->

	<!-- MENU -->
	<header>
		<div class="container">
			<div class="row">
				<div class="span12">
					<nav class="desktop-nav">
						<ul class="clearfix">
							<li><a href="#">BAGS</a></li>
							<li><a href="#">Jackets</a></li>
							<li><a href="#">ACCESORIES </a></li>
							<li><a href="#">CATEGORIES</a></li>
							<li><a href="#">Manufacters</a></li>
							<li><a href="#">Sale </a></li>
							<li><a href="#">Blog</a></li>
							<li><a href="#">Dresses</a></li>
							<li><a href="#">Jewelry</a></li>
							<li><a href="#">ShOES</a></li>
							<li><a href="#">Shirts</a></li>

						</ul>
					</nav>

					<select>
						<option>BAGS</option>
						<option>Jackets</option>
						<option>ACCESORIES</option>
						<option>CATEGORIES</option>
						<option>Manufacters</option>
						<option>Sale</option>
						<option>Blog</option>
						<option>Dresses</option>
						<option>Jewelry</option>
						<option>ShOES</option>
						<option>Shirts</option>
					</select>
				</div>
			</div>
		</div>
	</header>
	<!-- MENU -->

	<div class="wrapper">
		<div class="container">
			<div class="row ">

				<!-- SLIDER -->
				<div class="span9 slider">
					<div class="slider-slides">
						<div class="slides">
							<a href="#"><img src="resources/images/slide1.png" alt=""></a>
							<div class="overlay">
								<h1>AWESOME FURNITUR</h1>
								<p>
									<span>50%</span> OFF <br /> TRENDY <span>DESIGNS</span>
								</p>
							</div>
						</div>
						<div class="slides">
							<a href="#"><img src="resources/images/slide2.jpg" alt=""></a>
							<div class="overlay">
								<h1>LATEST FASHION</h1>
								<p>
									<span>30%</span> OFF <br /> TRENDY <span>DESIGNS</span>
								</p>
							</div>
						</div>
						<div class="slides">
							<a href="#"><img src="resources/images/slide3.jpg" alt=""></a>
							<div class="overlay">
								<h1>AWESOME FURNITUR</h1>
								<p>
									<span>50%</span> OFF <br /> TRENDY <span>DESIGNS</span>
								</p>
							</div>
						</div>
						<div class="slides">
							<a href="#"><img src="resources/images/slide4.jpg" alt=""></a>
							<div class="overlay">
								<h1>LATEST FASHION</h1>
								<p>
									<span>30%</span> OFF <br /> TRENDY <span>DESIGNS</span>
								</p>
							</div>
						</div>
					</div>
					<a href="#" class="next"></a> <a href="#" class="prev"></a>
					<div class="slider-btn"></div>
				</div>
				<!-- SLIDER -->

				<!-- SPECIAL-OFFER -->
				<div class="span3">
					<div class="offers">
						<figure>
							<a href="#"><img src="resources/images/offers.png" alt=""></a>
							<div class="overlay">
								<h1>
									SUMMER<span> COLLECTION 35% OFF</span> <small> -
										Limited Offer</small>
								</h1>
							</div>
						</figure>
					</div>

					<div class="offers">
						<figure>
							<a href="#"><img src="resources/images/offers2.png" alt=""></a>
							<div class="overlay">
								<h1>
									SUMMER<span> COLLECTION 35% OFF</span> <small> -
										Limited Offer</small>
								</h1>
							</div>
						</figure>
					</div>
				</div>
				<!-- SPECIAL-OFFER -->

			</div>
		</div>
	</div>

	<!-- PRODUCT-OFFER -->
	<div class="product_wrap">
		<div class="container">
			<div class="row heading-wrap">
				<div class="span12 heading">
					<h2>
						Featured Products <span></span>
					</h2>
				</div>
			</div>
			<div class="row">

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom prettyPhoto"></a>
								<a href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

				<div class="span3 product">

					<div>
						<figure>
							<a href="#"><img src="http://placehold.it/270x186" alt=""></a>
							<div class="overlay">
								<a href="http://placehold.it/270x186" class="zoom"></a> <a
									href="#" class="link"></a>
							</div>
						</figure>
						<div class="detail">
							<span>$244.00</span>
							<h4>Brown Wood Chair</h4>
							<div class="icon">
								<a href="#" class="one tooltip" title="Add to wish list"></a> <a
									href="#" class="two tooltip " title="Add to cart"></a> <a
									href="#" class="three tooltip" title="Add to compare"></a>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<!-- PRODUCT-OFFER -->



	<!-- FOOTER -->
	<tiles:insertAttribute name="footer" />
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


