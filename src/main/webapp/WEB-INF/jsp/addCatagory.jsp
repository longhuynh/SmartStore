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
						<small></small><a href="#">New Catagory</a>
					</h5>
					<div class=" clearfix">
					<form:form modelAttribute="category" method="POST" class="billing-form clearfix" >
 
			<fieldset>
				<!--  <legend>New Catagory</legend> -->
					<label>Catagory Name:<form:errors path="categoryName" cssClass="text-danger" /></label>
				   <form:input id="categoryName" path="categoryName" value="" />	
				  
				 
				<input type="submit" value="AddCatagory" class="red-button">
		</form:form>
					</div>
				</div>


			</div>
					
</div></div></div>