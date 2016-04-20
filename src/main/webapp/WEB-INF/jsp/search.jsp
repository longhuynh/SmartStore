<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

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
							<span>$244.00</span> <a
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