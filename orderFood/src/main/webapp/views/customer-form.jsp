<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login</title>
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

<link href="<c:url value="/resources/static/css/style1.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">

</head>
<body background="<c:url value="/resources/static/images/register.jpg"/>" />
<div class="container">
	<div class="col-md-offset-2 col-md-7">
		<section id="contact" class="parallax-section">
			<div class="row">
				<div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
					<h1 class="heading">Register Yourself</h1>
					<hr>
					<h3>${msg }</h3>
					<hr/>
				</div>

				<div class="col-md-2 col-sm-1"></div>
			</div>



			<div class="panel-body">
				<form:form action="save" cssClass="form-horizontal" method="post"
					modelAttribute="customer">
<div class="form-group">
						<div class="row">
						<div class="col-xs-6"><input type="text" class="form-control" name="name" placeholder=" Name" required="required"></div>
						
						</div>     
					</div>			
					
					<div class="form-group">
						<input type="text" class="form-control" name="phone" placeholder="Phone Number" required="required">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" name="address.baseAddress"  placeholder="Address" required="required">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" placeholder="City" name="address.city" required="required">
					</div>
						<div class="form-group">
						<input type="text" class="form-control" name="address.state"  placeholder="State" required="required">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Pin"name="address.pincode"  required="required">
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password"   required="required">
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control" name="password"  placeholder="Confirm Password" required="required">
					</div>
						<div class="form-group">
						<select name="usersType">
						<option value="customer">Customer</option>
						<option value="resturant">Resturant</option>
						</select>
					</div>
					
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block btn-lg" value="Sign Up">
					</div>


				</form:form>
				<p class="hint-text small"><a href="loginForm1">Already Have an Account ?</a></p>
			</div>
		</section>

	</div>
</div>

</body>
</html>

