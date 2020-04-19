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
	
	
	<script src="<c:url value="/resources/static/js/jquery.js" />"></script>
<script src="<c:url value="/resources/static/js/jquery.parallax.js" />"></script>
<script src="<c:url value="/resources/static/js/smoothscroll.js" />"></script>
<script src="<c:url value="/resources/static/js/wow.min.js" />"></script>
<script src="<c:url value="/resources/static/js/custom.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/static/js/anime.min.js" />"></script>
<script src="<c:url value="/resources/static/js/nivo-lightbox.min.js" />"></script>
	
	<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">

	<link href="<c:url value="/resources/static/css/animate.min.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/static/css/font-awesome.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/nivo-lightbox.css.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/nivo_themes/default.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/cartstyle.css" />"
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
				<li><a href="#" class="smoothScroll">HOME</a></li>
				<li><a href="#follow" class="smoothScroll">ABOUT US</a></li>
				<li><a href="contact" class="smoothScroll">CONTACT</a></li>
				<li><a href="" class="smoothScroll" data-toggle="modal" data-target="#myModal-signin" >LOGIN</a></li>
				<li><a href="" class="smoothScroll" data-toggle="modal" data-target="#myModal-signup">SIGN UP</a></li>
			</ul>
		</div>
	</div>
</section>

<!--Home Section-->

<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h1>Welcome to Meal On Wheels</h1>
				<h2>Always On For You</h2>
						
			</div>
		</div>
	</div>		
</section>

<!-- cart section -->
<section id="cart" class="parallax-section">
	<div class="container">
		<div ng-app="myapp" ng-controller="myController"
			style="margin-bottom: 30px">
			<div ng-init="getCart(${cartId})">
				<br> <h1>List of Items Ordered</h1>
				
				<!--<div>
					<c:url value="/order/${cartId}" var="url1"></c:url>
					<a href="${url1}" class="btn btn-danger pull-left"
						style="margin-top: 15px; margin-left: 20px"> <span
						class="glyphicon glyphicon-shipping-cart"> </span>Check Out
					</a>
				</div>-->
				
				<table class="table table-hover" id="productList">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Total Price</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="cart in carts.cartItem">
							<td>{{cart.product.productName}}</td>
							<td>{{cart.quality}}</td>
							<t<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	
	
	<script src="<c:url value="/resources/static/js/jquery.js" />"></script>
<script src="<c:url value="/resources/static/js/jquery.parallax.js" />"></script>
<script src="<c:url value="/resources/static/js/smoothscroll.js" />"></script>
<script src="<c:url value="/resources/static/js/wow.min.js" />"></script>
<script src="<c:url value="/resources/static/js/custom.js" />"></script>
<script src="<c:url value="/resources/static/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/static/js/anime.min.js" />"></script>
<script src="<c:url value="/resources/static/js/nivo-lightbox.min.js" />"></script>
	
	<link href="<c:url value="/resources/static/css/bootstrap.min.css" />"
	rel="stylesheet">

	<link href="<c:url value="/resources/static/css/animate.min.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/static/css/font-awesome.min.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/nivo-lightbox.css.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/nivo_themes/default.css" />"
	rel="stylesheet">
	<link href="<c:url value="/resources/static/css/cartstyle.css" />"
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
				<li><a href="/views/index.jsp" class="smoothScroll">Home</a></li>
			    <li><a href="#" class="smoothScroll">Log Out</a></li>
			</ul>
		</div>
	</div>
</section>

<!--Home Section-->

<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12">
				<h1>Welcome to Meal On Wheels</h1>
				<h2>Always On For You</h2>
						
			</div>
		</div>
	</div>		
</section>

<!-- cart section -->
<section id="cart" class="parallax-section">
	<div class="container">
		<div ng-app="myapp" ng-controller="myController"
			style="margin-bottom: 30px">
			<div ng-init="getCart(${cartId})">
				<br> <h1>List Of Items Ordered</h1>
				
				<!--<div>
					<c:url value="/order/${cartId}" var="url1"></c:url>
					<a href="${url1}" class="btn btn-danger pull-left"
						style="margin-top: 15px; margin-left: 20px"> <span
						class="glyphicon glyphicon-shipping-cart"> </span>Check Out
					</a>
				</div>-->
				
				<table class="table table-hover" id="productList">
					<thead>
						<tr>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Total Price</th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="cart in carts.cartItem">
							<td>{{cart.product.productName}}</td>
							<td>{{cart.quality}}</td>
							<td>{{cart.product.productPrice}}</td>
							<td>{{cart.price}}</td>
							<td><a href="#" class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6"
								ng-click="removeFromCart(cart.cartItemId)"
								style="margin-top: 0px;"><span
									class="btn btn-default">remove</span></a></td>
					</tbody>
				</table>
				Grand Total Price: {{calculateGrandTotal()}}
			</div>
			
			<div>
				<a class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6" ng-click="clearCart()"
					style="margin-top: 15px; margin-left: 20px"> <span
					class="btn btn-default">Clear Cart </span>
				</a>
				</div>
			<c:url value="/menuList" var="url"> </c:url>
			
			<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
				<a href="${url}" class="btn btn-default" style="margin-left: 50%">Continue Order</a>
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
				<p>Copyright Â© Meal On Wheels 
                

			</div>
		</div>
	</div>
</section>

<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/nivo-lightbox.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/anime.min.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
							d>{{cart.product.productPrice}}</td>
							<td>{{cart.price}}</td>
							<td><a href="#" class="btn btn-danger"
								ng-click="removeFromCart(cart.cartItemId)"
								style="margin-top: 0px;">
								<span class="glyphicon glyphicon-trash"></span>remove</a></td>
					</tbody>
				</table>
				Grand Total Price: {{calculateGrandTotal()}}
			</div>
			
			<div>
				<a class="btn btn-danger pull-left" ng-click="clearCart()"
					style="margin-top: 15px; margin-left: 20px"> <span
					class="glyphicon glyphicon-remove-sign"> </span>Clear Cart
				</a>
				</div>
			<c:url value="/menuList" var="url"> </c:url>
			
			<div class="col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6">
				<a href="${url}" class="btn btn-default" style="margin-left: 20px">Continue Order</a>
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
