<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/static/js/jquery-3.3.0.min.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>

</head>
<body background="<c:url value="/resources/static/images/register.jpg"/>"/>
	<div class="container">
		<div class="col-md-offset-2 col-md-7">
<section id="contact" class="parallax-section">
		<div class="row">
			<div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
				<h1 class="heading" >Login To Continue</h1>
				<hr>
			</div>

			<div class="modal-header">		
			<h1 class="heading" >Login To Continue</h1>
				<h3>${msg}</h3>	
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
			</div>
			<div class="modal-body">
				<form action="authenticLogin" method="post">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Username" name="phone" required="required">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password" name="password" required="required">
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block btn-lg" value="Sign in">
					</div>
				</form>				
				<p class="hint-text small"><a href="#">Forgot Your Password?</a></p>
			</div>
	




					
			


				</div>

</section>
			</div>
		</div>

	<div style="color: red">${error}</div>
</body>
</html>