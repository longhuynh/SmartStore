<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="product_wrap">

	<div class="container">
		<div class="row">
			<div class="span12">

				<div id="check-accordion">
					<h5>
						<small></small><a href="#">LOGIN OR REGISTER</a>
					</h5>

					<div class="clearfix">
						<div class="span6 cheakout clearfix information">
							<h6>
								New Customer ? <span>Choose your Checkout options:</span>
							</h6>
							<form class="clearfix ">
								<ul>
									<li><a href="CustomerSignUp">Register as Customer</a> <br /></li>
									<li><a href="VendorSignUp">Register as Vendor</a> <br /></li>
								</ul>

								<p>By creating an account with our store, you will be able
									to move through the checkout process faster, store multiple
									shipping addresses, view and track your orders in your account
									and more.</p>
							</form>
						</div>

						<div class="span6 cheakout clearfix register">
							<h6>
								Registered Customer ? <span>Please fill the form below</span>
							</h6>
							<form class="clearfix"
								action="<c:url value="/j_spring_security_check"></c:url>"
								class="form-horizontal" method="post">
								<label>Your username</label> <input name='j_username'
									type="text" placeholder="enter your username"><br /> <label>Your
									Password</label> <input name='j_password' value="" type="password"
									placeholder="enter your password"><br /> <a href="#">Forgot
									your password ?</a>
								<c:if test="${not empty error}">
									<div class="alert alert-danger">
										<spring:message
											code="AbstractUserDetailsAuthenticationProvider.badCredentials" />
										<br />
									</div>
								</c:if>
								<input type="submit" value="Login">
							</form>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
</div>
<!-- PRODUCT-OFFER -->

