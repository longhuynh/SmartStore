<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="header-top">
	<div class="container">
		<div class="row">

			<div class="span5">
				<div class="logo">
					<a href=" <spring:url value="/" />"><img
						src="resources/images/logo.png" alt=""></a>
					<h1>
						<a href=" <spring:url value="/" />">Welcom to<span> Max
								Shop </span> USA
						</a>
					</h1>
				</div>
			</div>

			<div class="span5">
				<form:form class="search-form" action="/smartstore/search"
					method="get">

					<input type="text" name="key" id="key"
						placeholder="Type and hit enter">
					<input type="submit" value="">
				</form:form>


			</div>

			<div class="span2">
				<div class="cart">
					<ul>
						<li class="first"><a href=" <spring:url value="/checkout" />"></a><span></span></li>
						<li>${cart.numberOfProducts} item(s)</li>
					</ul>
				</div>
			</div>

		</div>
	</div>
</div>

