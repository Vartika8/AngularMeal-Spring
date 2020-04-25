<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Meal On Wheels</title>

	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">

	<script src="<c:url value="/resources/static/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/static/js/jquery.parallax.js"/>"></script>
<script src="<c:url value="/resources/static/js/smoothscroll.js" />"></script>
<script src="<c:url value="/resources/static/js/wow.min.js"/>"></script>
<script src="<c:url value="/resources/static/js/custom.js"/>"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/static/js/anime.min.js"/>"></script>
<script src="<c:url value="/resources/static/js/nivo-lightbox.min.js"/>"></script>
	
	<link href="<c:url value="/resources/static/css/bootstrap.min.css"/>"
	rel="stylesheet">

	<link href="<c:url value="/resources/static/css/animate.min.css"/>"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/static/css/font-awesome.min.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/nivo-lightbox.css.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/nivo_themes/default.css"/>"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/style.css"/>"
	rel="stylesheet">

	
	</head>
<body>

<!-- navigation section -->
<section class="navbar   navbar-light navbar-fixed-top" role="navigation" style="background-color: #696969">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<p class="navbar-brand" > MEAL ON WHEELS</p>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
			
				<li><a href="loginForm1" class="smoothScroll">LOGIN</a></li>
				<li><a href="showForm" class="smoothScroll">SIGN UP</a></li>
				
			</ul>
		</div>
	</div>
</section>


<!-- home section -->
<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h1>Welcome to Meal On Wheels</h1>
				<h2>Always On For You</h2>
				<h1 class="ml11">
				<span class="text-wrapper">
				<span class="line line1"></span>
				</span>
				</h1>				
			</div>
		</div>
	</div>		
</section>


<!-- contact section -->
<section id="contact" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-1 col-md-10 col-sm-12 text-center">
				<h1 class="heading">Contact Us</h1>
				<hr>
			</div>
			<div class="col-md-offset-1 col-md-10 col-sm-12 wow fadeIn" data-wow-delay="0.9s">
				<form action="#" method="post">
					<div class="col-md-6 col-sm-6">
						<input name="name" type="text" class="form-control" id="name" placeholder="Name">
				  </div>
					<div class="col-md-6 col-sm-6">
						<input name="email" type="email" class="form-control" id="email" placeholder="Email">
				  </div>
					<div class="col-md-12 col-sm-12">
						<textarea name="message" rows="8" class="form-control" id="message" placeholder="Message"></textarea>
					</div>
					<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
						<input name="submit" type="submit" class="form-control" id="submit" value="Submit">
					</div>
				</form>
			</div>
			<div class="col-md-2 col-sm-1"></div>
		</div>
	</div>
</section>


<!-- footer section -->
<footer class="parallax-section" >
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s" >
				<h2 class="heading">Contact Info.</h2>
				<div class="ph">
					<p><i class="fa fa-phone"></i> Phone</p>
					<h4>xxxxxxxxxxx</h4>
				</div>
				<div class="ph">
					<p><i class="fa fa-phone"></i> Phone</p>
					<h4>xxxxxxxxxxx</h4>
				</div>
				<div class="email">
					<p><i class="fa fa-envelope" aria-hidden="true"></i>Email</p>
					<h4>mealonwheel@mail.com</h4>
				</div>
				
				
			</div>
			
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
				<h2 id = "follow" class="heading">Follow Us</h2>
				<ul class="social-icon">
					<li><a href="#" class="fa fa-facebook wow bounceIn" data-wow-delay="0.3s"></a></li>
					<li><a href="#" class="fa fa-twitter wow bounceIn" data-wow-delay="0.6s"></a></li>
					<li><a href="#" class="fa fa-behance wow bounceIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-dribbble wow bounceIn" data-wow-delay="0.9s"></a></li>
					<li><a href="#" class="fa fa-github wow bounceIn" data-wow-delay="0.9s"></a></li>
				</ul>
			</div>
		</div>
	</div>
</footer>


<!-- copyright section -->
<section id="copyright">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h3>Meal On Wheels</h3>
				<p>Copyright © Meal On Wheels 
                

			</div>
		</div>
	</div>
</section>

</body>
</html>
