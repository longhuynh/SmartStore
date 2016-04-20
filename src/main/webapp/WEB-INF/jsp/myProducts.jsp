<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>


<div class="container">
	<c:if test="${not empty noproduct}">
		<div class="alert alert-success">
			<spring:message code="NoProductstobeApproved" />
			<br />
		</div>
	</c:if>
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
							<span>$244.00</span> <a
								href="<spring:url value="/product?id=${product.productId}" />">
								<h4>${product.productName}</h4>
							</a>
							<div class="buttons">
								<a
									href="<spring:url value="/deleteProduct?id=${product.productId}" />"
									class="check big-button">Delete</a> 
							</div>

						</div>
					</div>

				</div>

			</c:forEach>
		</div>
	</div>
</div>
<!-- PRODUCT-OFFER -->
<%-- 

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title> Vendor Products</title>
</head>
<body>
<div class="container">
				<c:if test="${not empty emptylist}">
<div class="alert alert-success"  >
<spring:message code="novendorproducts"/><br />
</div>
</c:if>
</div>
<!-- <div id="main"> -->
		<!-- <div id="products"> -->
				<div class="row" >
				<c:forEach items="${vendorProducts}" var="product">
				<div class="article" style="padding-bottom: 15px ; float:left ;width:30%;height:30%">
					<div class="thumbnail" >
					<!-- <div class="col-md-5"> -->
						<img src="<c:url value="${product.productPath}"></c:url>" alt="image" style = "width:30%;float:left;"/>  
					

					<!-- <div class="col-md-5"> -->
					<div class="caption">
					 <h3>${product.productName}</h3>
         <p><strong>Status :</strong><span class="label label-warning"> ${product.approval}</p> 
						<p><strong>Description :</strong> ${product.description}</p>
						<p>
							<strong>Category :</strong>  ${product.category.categoryName}
						</p>			

						<p>
							<strong>Available units in stock </strong> :
							       ${product.unitsInStock}
						</p>
						
						<h4>${product.unitPrice}USD</h4>
						<p>
							<a href="<spring:url value="#" />" class="btn btn-warning btn-large"> <span
								class="glyphicon-shopping-cart glyphicon"></span> DELETE
							</a> 
					</div>		
                    </div>
					</div>
					</c:forEach>
				</div>
</body>
</html> --%>