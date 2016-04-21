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
							<li><a href=" <spring:url value="/home" />" class="account">Hello ${admin.firstName}</a></li>
							<li><a href=" <spring:url value="/logout" />" class="check">Log out</a></li>
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

		<tiles:insertAttribute name="header" />
	</div>

	<!-- HEADER -->
	<!-- MENU -->
	<header>
		<div class="container">
			<div class="row">
				<div class="span12">



					<nav class="desktop-nav">
							<ul class="clearfix">							
							
									
							<li><a href=" <spring:url value="/addCatagory" />">Add
							        Catagory</a></li>
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


