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
				</div>
			</div>
		</div>
	</header>
	<!-- MENU -->
	<tiles:insertAttribute name="body" />

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


