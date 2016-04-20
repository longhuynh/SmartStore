<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- BAR -->
<div class="bar-wrap">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="title-bar">
					<h1>PRODUCT DETAIL</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- BAR -->

<!-- PRODUCT-OFFER -->
<div class="product_wrap">

	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="single clearfix">
					<div class="wrap span5">
						<div id="carousel-wrapper">
							<div id="carousel" class="cool-carousel">
								<img src="<c:url value="${product.productPath}" ></c:url>"
									alt="" />
							</div>

						</div>


					</div>

					<div class="span7">
						<div class="product-detail">
							<h4>${product.productName}</h4>
							<span>${product.unitPrice}</span>
							<p>
								<strong>Category</strong> : ${product.category.categoryName}
							</p>

							<p>
								<c:if test="${product.unitsInStock > 0}">
							Available in stock
						</c:if>
								<c:if test="${product.unitsInStock <= 0}">
							Out of stock
						</c:if>
							</p>
							<p>${product.description}</p>
						</div>
						<div class="buttons">
							<c:if test="${not empty canaddtocart}">
								<a href="<c:url value="/cart/add/${product.productId}"/> "
									class="cart big-button">Add to Cart</a>
								<a href="<spring:url value="/checkout" />"
									class="check big-button">Checkout</a>
							</c:if>


							<a href="<spring:url value="/home" />" class="compare big-button">Back</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- PRODUCT-OFFER -->
