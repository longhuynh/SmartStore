<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
					<h1>SHOPPING CART</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- BAR -->

<!-- PRODUCT-OFFER -->
<div class="product_wrap">
	<form:form method="POST" modelAttribute="productOrder">
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="shopping-cart">

						<ul class="title clearfix">
							<li>Image</li>
							<li class="second">Product Name</li>
							<li>Quantity</li>
							<li>Unite Price</li>
							<li class="last">Sub Total</li>

						</ul>
						<c:forEach items="${productOrder.orderDetails}" var="detail"
							varStatus="status">

							<ul class=" clearfix">
								<li>
									<figure>
										<img
											src="<c:url value="${detail.product.productPath}"></c:url>"
											alt="${product.productName}"
											style="width: 131px; height: 86px;">
									</figure>
								</li>
								<li class="second">
									<h4>${detail.product.productName}</h4>
									<p>
										<span>Color:</span> Brown
									</p>
									<p>
										<span>Size:</span> 12
									</p>
								</li>
								<li><form:input type="number"
										path="orderDetails[${status.index}].quantity" size="2" /></li>
								<li>${detail.price}</li>
								<li class="last">${detail.price * detail.quantity}</li>

							</ul>




						</c:forEach>

						<a href=" <spring:url value="/home" />" class="red-button">Continue
							Shopping</a>
						<button class="red-button black" id="update" name="update">
							<spring:message code="button.update" />
						</button>



					</div>
				</div>
			</div>

			<div class="row cart-calculator clearfix">
				<div class="span8">
					<h6>Shipping Address</h6>
					<div class="estimate clearfix">

						<form:input id="shippingAddress.street" placeholder="Street"
							path="shippingAddress.street" />
						<form:errors path="shippingAddress.street" />

						<form:input id="shippingAddress.zipcode" placeholder="Zip code"
							path="shippingAddress.zipcode" />
						<form:errors path="shippingAddress.zipcode" />
						<form:select id="shippingAddress.state"
							path="shippingAddress.state">
							<form:options items="${states}" />							
						</form:select>
					</div>
				</div>
				
				<div class="span4 total clearfix">
					<ul class="black">
						<li></li>
						<li>Total order:</li>
					</ul>
					<ul class="gray">
						<li></li>
						<li>$${productOrder.orderPrice}</li>
					</ul>
					<button class="red-button" id="order" name="order">
						<spring:message code="button.order" />
					</button>
					<button class="red-button" id="cancel" name="cancel">
						<spring:message code="button.cancel" />
					</button>


				</div>
			</div>

		</div>

	</form:form>
</div>
<!-- PRODUCT-OFFER -->

<%-- 
<div id="main">

	<div id="products">

		<form:form method="POST" modelAttribute="productOrder"
			class="form-horizontal">

			<div class="clear">
				<div style="float: left;">
					<fieldset>
						<legend>
							<spring:message code="cart.checkout.shipping" />
						</legend>
						<table>
							<tr>
								<td><label for="shippingAddress.street" class="error">
										<spring:message code="address.street" />
								</label></td>
								<td><form:input id="shippingAddress.street"
										path="shippingAddress.street" /></td>
								<td><form:errors path="shippingAddress.street" /></td>
							</tr>
							<tr>
								<td><label for="shippingAddress.state" class="error">
										<spring:message code="address.state" />
								</label></td>
								<td><form:input id="shippingAddress.state"
										path="shippingAddress.state" /></td>
								<td><form:errors path="shippingAddress.state" /></td>
							</tr>
							<tr>
								<td><label for="shippingAddress.zipcode" class="error">
										<spring:message code="address.zipcode" />
								</label></td>
								<td><form:input id="shippingAddress.zipcode"
										path="shippingAddress.zipcode" /></td>
								<td><form:errors path="shippingAddress.zipcode" /></td>
							</tr>
						</table>
					</fieldset>
				</div>

			</div>
			<div class="clear">
				<fieldset>
					<legend>
						<spring:message code="cart.checkout.order" />
					</legend>
					<table>
						<thead>
							<tr>
								<th><spring:message code="product.productName" /></th>
								<th><spring:message code="order.quantity" /></th>
								<th><spring:message code="product.unitPrice" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${productOrder.orderDetails}" var="detail"
								varStatus="status">
								<tr>
									<td><img
										src="<c:url value="${detail.product.productPath}"></c:url>"
										alt="${product.productName}"
										style="float: right; height: 246px;"></td>
									<td>${detail.product.productName}</td>
									<td><form:input
											path="orderDetails[${status.index}].quantity" size="2" /></td>
									<td>${detail.price}</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="2" align="right"><b><spring:message
											code="order.total" /></b></td>

								<td>${productOrder.orderPrice}</td>
							</tr>
						</tbody>
					</table>
				</fieldset>
			</div>

			<button id="order" name="order">
				<spring:message code="button.order" />
			</button>
			<button id="update" name="update">
				<spring:message code="button.update" />
			</button>
			<button id="cancel" name="cancel">
				<spring:message code="button.cancel" />
			</button>

		</form:form>
	</div>

</div>
 --%>