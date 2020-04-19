<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Meal On Wheels</title>

	<meta http-equiv="X-UA-Compatible" content="IE=Edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="">
	<meta name="description" content="">
	
	
	<script src="<c:url value="/resources/static/js/jquery.js"/>"></script>
<script src="<c:url value="/resources/static/js/jquery.parallax.js"/>"></script>
<script src="<c:url value="/resources/static/js/smoothscroll.js"/>"></script>
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
	<link href="<c:url value="/resources/static/css/menustyle.css"/>"
	rel="stylesheet">
	</head>
<body>
<!-- navigation section -->
<section class="navbar   navbar-light navbar-fixed-top" role="navigation" style="background-color: #696969;">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">Meal On Wheels</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#Cart" class="smoothScroll">Cart </a></li>
				<li><a href="#UserDetails" class="smoothScroll">${User}</a></li>
			</ul>
		</div>
	</div>
</section>


<!-- home section -->
<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h1>Meal On Wheels</h1>
				<h2>Always On For You</h2>				
			</div>
		</div>		
	</div>
</section>

<!-- Menu List-->

<section id="menu" class="parallax-section">
	<div class="container">
		<div class="row">   
			<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
				<h1 class="heading">${ restaurantName }</h1>
				<hr>
			</div>
			<c:forEach items="${foodList}" var="tempFood">
			
					<c:url var="cartLink" value="addCart">
					<c:param name="foodId" value="${tempFood.id}" />
				</c:url>	
			<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
				<div class="card" style="width: 18rem;">
			
				 <img src="resources/static/images/${tempFood.imageUrl} " class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">${ tempFood.foodName }</h5>
						<p class="card-text">${ tempFood.description }</p>
						<p class="card-text">${ tempFood.price }</p>
						
						<a href="${cartLink}" class="btn btn-primary">Add to Cart</a>
					</div>
				</div>
			</div>
			</c:forEach>	
			<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
				<a href="/go-to-cart" class ="btn btn-primary" margin-top="-20px">Go To Cart</a>
			</div>
			
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
				<h2 class="heading">Follow Us</h2>
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
				<p>Copyright © Meal On Wheels </p>
			</div>
		</div>
	</div>
</section>

</body>
</html>