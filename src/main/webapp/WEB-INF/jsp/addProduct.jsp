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
						<small></small><a href="#">New product</a>
					</h5>
					<div class=" clearfix">
					<form:form modelAttribute="product" method="POST" class="billing-form clearfix">

			<fieldset>
				<legend>New product</legend>
					<label>Product Name:<form:errors path="productName"
										cssClass="text-danger" /></label>
				   <form:input id="productName" path="productName" value="" />		
				   	
				   	
				   <label>Unit Price:<form:errors path="unitPrice"
										cssClass="text-danger" /></label>
				   <form:input id="unitPrice" path="unitPrice" value="" />			
			
				  <label>Description<form:errors path="description"
										cssClass="text-danger" /></label>
				   <form:input id="description" path="description" value="" />	

				<label>Category:<form:errors path="description"
										cssClass="text-danger" /></label>
				   <form:select class="form:input-large"  id="category"  path="category.categoryId" >
						<form:options items="${categories}" itemLabel="categoryName"
							itemValue="categoryId" />
					</form:select>
				
				<label>Quantity:<form:errors path="description"
										cssClass="text-danger" /></label>
				<form:input id="unitsInStock" path="unitsInStock" value="" />	

				<label>Product Condition:<form:errors path="productCondition"
										cssClass="text-danger" /></label>
				<form:radiobutton path="productCondition" value="New" />New 
				<form:radiobutton path="productCondition" value="Old" />used 
				<form:radiobutton path="productCondition" value="Refurbished" />Refurbished
				
				<label>Product Image:<form:errors path="productImage"
										cssClass="text-danger" /></label>
				<form:input id="productImage" path="productImage" type="file" value="" />	
				
				<input type="submit" value="Add" class="red-button">


						</form:form>
					</div>
				</div>


			</div>


		</div></div></div>



