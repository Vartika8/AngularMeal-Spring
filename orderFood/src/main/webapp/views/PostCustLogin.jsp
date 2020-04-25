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

<script src="<c:url value="/resources/static/js/jquery.js" />"></script>
<script src="<c:url value="/resources/static/js/jquery.parallax.js" />"></script>
<script src="<c:url value="/resources/static/js/smoothscroll.js" />"></script>
<script src="<c:url value="/resources/static/js/wow.min.js" />"></script>
<script src="<c:url value="/resources/static/js/custom.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/static/js/anime.min.js" />"></script>
<script
	src="<c:url value="/resources/static/js/nivo-lightbox.min.js" />"></script>

<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">

<link href="<c:url value="/resources/static/css/animate.min.css" />"
	rel="stylesheet">

<link
	href="<c:url value="/resources/static/css/font-awesome.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/static/css/nivo-lightbox.css.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/static/css/nivo_themes/default.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/static/css/postloginstyle.css" />"
	rel="stylesheet">

</head>
<body>
	<!-- navigation section -->
	<section class="navbar   navbar-light navbar-fixed-top"
		role="navigation" style="background-color: #696969;">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand">Meal On Wheels</a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/views/index.jsp" class="smoothScroll">Home</a></li>

					<li><a href="/views/cart.jsp" class="smoothScroll">Cart </a></li>
					<!--  <li><a href="#UserDetails" class="smoothScroll">${User}</a></li>-->
					
					<li><a href="#contact" class="smoothScroll">${Users.name}</a></li>
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
					<h2>Find Your Favorite Restaurant Here</h2>

				</div>
				<br> <br>
				<div class="row">
					<div class="col-md-12">
						<div class="input-group">
							<div class="input-group-btn search-panel">
								<button type="button" class="btn btn-default dropdown-toggle"
									data-toggle="dropdown">
									<span id="search_concept">All Restaurant</span> <span
										class="caret"></span>
								</button>
								<ul class="dropdown-menu" role="menu">
									<c:forEach var="tempResturant" items="${resturantList}">
										<li><a href="#res1">${tempResturant.user.name}</a></li>

									</c:forEach>
								</ul>
							</div>
							<!--<input type="hidden" name="search_param" value="all" id="search_param"> -->
							<div class="search">
								<input type="text" class="form-control" name="search"
									placeholder="Search Restaurant..." />
							</div>
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">Search</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- cuisin Section-->
	<section id="cuisine" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
					<h1 class="heading">Your Delicious Cuisine Here</h1>
					<hr>
				</div>
				<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.3s">
					<a href="/resources/static/images/gallery-img1.jpg"
						data-lightbox-cuisine="meal-cuisine"><img
						src="/resources/static/images/gallery-img1.jpg" alt="cuisine img"></a>
					<div>
						<h3>Chinese cuisine</h3>
						<span>Seafood / Shrimp / Lemon</span>
					</div>
					<a href="/resources/static/images/gallery-img2.jpg"
						data-lightbox-cuisine="meal-cuisine"><img
						src="/resources/static/images/gallery-img2.jpg" alt="cuisine img"></a>
					<div>
						<h3>Mexican cuisine</h3>
						<span>Tomato / Rosemary / Lemon</span>
					</div>
				</div>
				<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.6s">
					<a href="/resources/static/images/gallery-img3.jpg"
						data-lightbox-cuisine="meal-cuisine"><img
						src="/resources/static/images/gallery-img3.jpg" alt="cuisine img"></a>
					<div>
						<h3>Italian cuisine</h3>
						<span>Bread / Rosemary / Orange</span>
					</div>


				</div>
				<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
					<a href="/resources/static/images/gallery-img4.jpg"
						data-lightbox-cuisine="meal-cuisine"><img
						src="/resources/static/images/gallery-img4.jpg" alt="cuisine img"></a>
					<div>
						<h3>Indian cuisine</h3>
						<span>Chicken / Rosemary / Green</span>
					</div>
					<a href="/resources/static/images/gallery-img5.jpg"
						data-lightbox-cuisine="meal-cuisine"><img
						src="/resources/static/images/gallery-img5.jpg" alt="cuisine img"></a>
					<div>
						<h3>Thai cuisine</h3>
						<span>Pasta / Rosemary / Green</span>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Restaurant-->

	<section id="cuisine" class="parallax-section">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8 col-sm-12 text-center">
					<h1 class="heading">Your Favorite Restaurants Here</h1>
					<hr>
				</div>

				<c:forEach var="tempResturant" items="${resturantList}">
					<!-- construct an "update" link with customer id -->
					
					<c:url var="orderLink" value="ViewFood">
					<c:param name="restaurantId" value="${tempResturant.id}" />
				</c:url>	
						<div class="col-md-4 col-sm-4 wow fadeInUp" data-wow-delay="0.9s">
							<div class="card" style="width: 18rem;">
								<img src="resources/static/images/${tempResturant.imageUrl} "
									class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">${ tempResturant.user.name }</h5>
									<p class="card-text">${ tempResturant.user.address.baseAddress  }</p>
									<a href="${orderLink}" class="btn btn-primary">Order From Here</a>
									
								</div>
							</div>
						</div>
				</c:forEach>



			</div>
		</div>
	</section>