<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

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
								SUMMER<span> COLLECTION 35% OFF</span> <small> - Limited
									Offer</small>
							</h1>
						</div>
					</figure>
				</div>

				<div class="offers">
					<figure>
						<a href="#"><img src="resources/images/offers2.png" alt=""></a>
						<div class="overlay">
							<h1>
								SUMMER<span> COLLECTION 35% OFF</span> <small> - Limited
									Offer</small>
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
					Products <span></span>
				</h2>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${products}" var="product">
				<div class="span3 product">

					<div>
						<figure>
							<a
								href="<spring:url value="/product?id=${product.productId}" />">
								<img src="<c:url value="${product.productPath}"></c:url>" alt="">
							</a>

						</figure>
						<div class="detail">
							<span>${product.unitPrice}</span> <a
								href="<spring:url value="/product?id=${product.productId}" />">
								<h4>${product.productName}</h4>
							</a>

							<c:if test="${not empty canaddtocart}">
								<div class="icon">

									<a href="<c:url value="/cart/add/${product.productId}"/> "
										class="one tooltip " title="Add to cart"></a>
								</div>
							</c:if>

						</div>
					</div>

				</div>

			</c:forEach>
		</div>
	</div>
</div>
<!-- PRODUCT-OFFER -->