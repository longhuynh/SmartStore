
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!-- BAR -->
<div class="bar-wrap">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="title-bar">
					<h1>VENDOR</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- BAR -->

<div class="container">
	<c:if test="${not empty addproduct}">
		<div class="alert alert-success">
			<spring:message code="addedproductsuccessfully" />
			<br />
		</div>
	</c:if>
</div>
</body>
