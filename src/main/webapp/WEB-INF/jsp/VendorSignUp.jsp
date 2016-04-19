<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="product_wrap">

	<div class="container">
		<div class="row">
			<div class="span12">

				<div id="check-accordion">
					<h5>
						<small></small><a href="#">Vendor Sign Up</a>
					</h5>
					<div class=" clearfix">
						<form:form modelAttribute="vendor" method="POST"
							class="billing-form clearfix">


							<fieldset>
								<label>First Name <form:errors path="firstName"
										cssClass="text-danger" /></label>

								<form:input id="firstName" path="firstName" value="" />
								<label>User Name <form:errors
										path="credentials.username" cssClass="text-danger" /></label>

								<form:input id="username" path="credentials.username" value="" />
								<label>Phone number <form:errors path="phone"
										cssClass="text-danger" /></label>
								<form:input id="phone" path="phone" value="" />

							</fieldset>

							<fieldset class="last">
								<label>Last Name <form:errors path="lastName"
										cssClass="text-danger" /></label>

								<form:input id="lastName" path="lastName" value="" />

								<label>Password</label>
								<form:input id="password" path="credentials.password" value=""
									type="password" />
								<label>E-mail <form:errors path="email"
										cssClass="text-danger" />
								</label>
								<form:input id="email" path="email" value="" />
							</fieldset>

							<label>Address <form:errors path="address.street"
									cssClass="text-danger" /></label>
							<form:input id="street" path="address.street" value=""
								type="text" />


							<fieldset>
								<label>State</label>
								<form:select id="state" path="address.state">

									<form:options items="${states}" />

								</form:select>
								<label>Card Type</label>
								<form:select class="form:input-large" id="creditCardType"
									path="creditCard.creditCardType">

									<form:options items="${creditType}" />
									<form:errors path="creditCard.creditCardType"
										cssClass="text-danger" />
								</form:select>



								<label>Expire Month <form:errors
										path="creditCard.expMonth" cssClass="text-danger" /></label>
								<form:select class="form:input-large" id="expMonth"
									path="creditCard.expMonth">

									<form:options items="${months}" />

								</form:select>

								<label>Expire Year <form:errors
										path="creditCard.expYear" cssClass="text-danger" /></label>
								<form:select class="form:input-large" id="expYear"
									path="creditCard.expYear">
									<form:options items="${years}" />

								</form:select>
							</fieldset>

							<fieldset class="last">
								<label>Zip Code <form:errors path="address.zipcode"
										cssClass="text-danger" />
								</label>
								<form:input id="zipcode" path="address.zipcode" value=""
									type="text" />
								<label>Card Number <form:errors
										path="creditCard.creditCardNo" cssClass="text-danger" /></label>
								<form:input id=" creditCardNo" path="creditCard.creditCardNo"
									value="" type="text" />
								<label>Name On Card <form:errors
										path="creditCard.nameOnCard" cssClass="text-danger" /></label>
								<form:input id="nameOnCard" path="creditCard.nameOnCard"
									value="" type="text" />

								<label>3 Digit Security Code <form:errors
										path="creditCard.securityCode" cssClass="text-danger" /></label>
								<form:input id="securityCode" path="creditCard.securityCode"
									value="" type="password" />


							</fieldset>

							<form:hidden path="credentials.enabled" value="TRUE" />
							<form:hidden path="credentials.authority[0].authority"
								value="ROLE_VENDOR" />



							<input type="submit" value="Register" class="red-button">


						</form:form>
					</div>
				</div>


			</div>


		</div>
		<div class="row">
			<c:if test="${not empty username}">
				<div class="alert alert-danger">
					<spring:message code="duplicateusername" />
					<br />
				</div>
			</c:if>
		</div>
	</div>

</div>
<!-- PRODUCT-OFFER -->
