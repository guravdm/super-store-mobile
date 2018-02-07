<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Cart</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
  ================================================== -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/fotorama.css">
<link rel="stylesheet" type="text/css" href="css/custom.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">
</head>
<body>
	<div class="se-pre-con"></div>
	<div class="main">
		<!-- HEADER START -->
		<header class="navbar navbar-custom" id="header">
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-5 col-xs-7"></div>
						<div class="col-md-6 col-sm-7 col-xs-5">
							<div class="top-link right-side">
								<ul>
									<li><a href="login.jsp" title="Login"> <i
											class="fa fa-lock hidden-sm hidden-lg" aria-hidden="true"></i>
											<span class="hidden-xs">Login</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="header-middle">
				<div class="container">
					<hr>
					<div class="header-inner">
						<div class="row">
							<div class="col-md-7 col-sm-6 col-xs-6">
								<div class="navbar-header">
									<a class="navbar-brand page-scroll" href="index.html"> <img
										alt="SuperStore" src="images/logo.png">
									</a>
								</div>
							</div>
							<div class="col-md-5 col-sm-6 col-xs-6">
								<div class="right-side">
									<button data-target=".navbar-collapse" data-toggle="collapse"
										class="navbar-toggle" type="button">
										<i class="fa fa-bars"></i>
									</button>
									<div class="right-side float-left-xs header-right-link">
										<div class="main-search">
											<div class="header_search_toggle desktop-view">
												<form>
													<div class="search-box">
														<input class="input-text" type="text"
															placeholder="Search entire store here...">
														<button class="search-btn"></button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="header_search_toggle mobile-view">
									<form>
										<div class="search-box">
											<input class="input-text" type="text"
												placeholder="Search entire store here...">
											<button class="search-btn"></button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="header-bottom">
					<div class="">
						<div id="menu" class="navbar-collapse collapse left-side p-0">
							<ul class="nav navbar-nav navbar-left">
								<li class="level"><a href="index.jsp" class="page-scroll">Today's
										Deals</a></li>
								<li class="level"><a href="index.jsp" class="page-scroll">Menu
										1</a></li>
								<li class="level"><span class="opener plus"></span> <a
									class="page-scroll">Pages</a>
									<div class="megamenu mobile-sub-menu">
										<div class="megamenu-inner-top">
											<ul class="sub-menu-level1">
												<li class="level2">
													<ul class="sub-menu-level2 ">
														<li class="level3"><a href="about.html">About Us</a></li>
														<li class="level3"><a href="account.html">Account</a></li>
														<li class="level3"><a href="checkout.jsp">Checkout</a></li>
														<li class="level3"><a href="contact.html">Contact</a></li>
														<!-- 
														<li class="level3"><a href="404.html">404 Error</a></li>
														<li class="level3"><a href="blog.html">Blog</a></li>
														<li class="level3"><a href="single-blog.html">Single
																Blog</a></li> -->
													</ul>
												</li>
											</ul>
										</div>
									</div></li>
							</ul>
						</div>
						<div class="right-side float-left-xs header-right-link">
							<ul>
								<li class="cart-icon"><a href="#"> <span> <!-- <small class="cart-notification">2</small> -->
									</span>
										<div class="cart-text hidden-sm hidden-xs">My Cart</div>
								</a>
									<div class="cart-dropdown header-link-dropdown">
										<ul class="cart-list link-dropdown-list">
											<li><a class="close-cart"><i
													class="fa fa-times-circle"></i></a>
												<div class="media">
													<a class="pull-left"> <img alt="SuperStore"
														src="images/1.jpg"></a>
													<div class="media-body">
														<span><a>Black African Print Skirt</a></span>
														<p class="cart-price">$14.99</p>
														<div class="product-qty">
															<label>Qty:</label>
															<div class="custom-qty">
																<input type="text" name="qty" maxlength="8" value="1"
																	title="Qty" class="input-text qty">
															</div>
														</div>
													</div>
												</div></li>
										</ul>
										<p class="cart-sub-totle">
											<span class="pull-left">Cart Subtotal</span> <span
												class="pull-right"><strong class="price-box">$29.98</strong></span>
										</p>
										<div class="clearfix"></div>
										<div class="mt-20">
											<a href="cart.jsp" class="btn-color btn">Cart</a> <a
												href="checkout.jsp" class="btn-color btn right-side">Checkout</a>
										</div>
									</div></li>
							</ul>
						</div>
					</div>
					<div class="menu-shadow-btm">
						<img src="images/menu-shadow.png" alt="SuperStore">
					</div>
				</div>
			</div>
		</header>
		<!-- HEADER END -->

		<!-- BANNER STRAT -->
		<div class="banner inner-banner align-center">
			<div class="container">
				<section class="banner-detail">
					<h1 class="banner-title">Shopping Cart</h1>
					<div class="bread-crumb right-side">
						<ul>
							<li><a href="index.jsp">Home</a>/</li>
							<li><span>Shopping Cart</span></li>
						</ul>
					</div>
				</section>
			</div>
		</div>
		<!-- BANNER END -->

		<!-- CONTAIN START -->
		<section class="ptb-50">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 mb-xs-30">
						<div class="cart-item-table commun-table">
							<div class="table-responsive">
								<table class="table">
									<thead>
										<tr>
											<th>Product</th>
											<th>Product Name</th>
											<th>Price</th>
											<th>Quantity</th>
											<th>Sub Total</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="product-page.jsp">
													<div class="product-image">
														<img alt="SuperStore" src="images/1.jpg">
													</div>
											</a></td>
											<td><div class="product-title">
													<a href="product-page.jsp">Cross Colours Camo Print
														Tank half mengo</a>
												</div></td>
											<td><ul>
													<li>
														<div class="base-price price-box">
															<span class="price">$80.00</span>
														</div>
													</li>
												</ul></td>
											<td><div class="input-box">
													<select data-id="100" class="quantity_cart"
														name="quantity_cart">
														<option selected="" value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
													</select>
												</div></td>
											<td><div class="total-price price-box">
													<span class="price">$80.00</span>
												</div></td>
											<td><i title="Remove Item From Cart" data-id="100"
												class="fa fa-trash cart-remove-item"></i></td>
										</tr>
										<tr>
											<td><a href="product-page.jsp">
													<div class="product-image">
														<img alt="SuperStore" src="images/2.jpg">
													</div>
											</a></td>
											<td><div class="product-title">
													<a href="product-page.jsp">Defyant Reversible Dot
														Shorts</a>
												</div></td>
											<td><ul>
													<li>
														<div class="base-price price-box">
															<span class="price">$80.00</span>
														</div>
													</li>
												</ul></td>
											<td><div class="input-box">
													<select data-id="100" class="quantity_cart"
														name="quantity_cart">
														<option selected="" value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
													</select>
												</div></td>
											<td><div class="total-price price-box">
													<span class="price">$80.00</span>
												</div></td>
											<td><i title="Remove Item From Cart" data-id="100"
												class="fa fa-trash cart-remove-item"></i></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-30">
					<div class="row">
						<div class="col-sm-6">
							<div class="mt-30">
								<a href="index.jsp" class="btn btn-black"><span><i
										class="fa fa-angle-left"></i></span>Continue Shopping</a>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="mt-30 right-side float-none-xs">
								<a class="btn btn-black">Update Cart</a>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="mtb-30">
					<div class="row">
						<div class="col-sm-6 mb-xs-40">
							<div class="estimate">
								<div class="heading-part mb-20">
									<h3 class="sub-heading">Estimate shipping and tax</h3>
								</div>
								<form class="full">
									<div class="row">
										<div class="col-sm-12">
											<div class="input-box mb-20">
												<select id="country_id">
													<option value="India">India</option>
													<option value="2">China</option>
													<option value="3">Pakistan</option>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="input-box mb-20">
												<select id="state_id">
													<option selected="" value="1">Select City</option>
													<option value="Karnataka">Karnataka</option>
													<option value="Maharashtra">Maharashtra</option>
													<option value="Kerala">Kerala</option>
												</select>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="input-box mb-20">
												<select id="city_id">
													<option selected="" value="1">Select City</option>
													<option value="Khanapur">Khanapur</option>
													<option value="Belgaum">Belgaum</option>
												</select>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="cart-total-table commun-table">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th colspan="2">Cart Total</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Item(s) Subtotal</td>
												<td><div class="price-box">
														<span class="price">$160.00</span>
													</div></td>
											</tr>
											<tr>
												<td>Shipping</td>
												<td><div class="price-box">
														<span class="price">$0.00</span>
													</div></td>
											</tr>
											<tr>
												<td><b>Amount Payable</b></td>
												<td><div class="price-box">
														<span class="price"><b>$160.00</b></span>
													</div></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr>
				<div class="mt-30">
					<div class="row">
						<div class="col-xs-12">
							<div class="right-side float-none-xs">
								<a href="checkout.jsp" class="btn btn-black">Proceed to
									checkout<span><i class="fa fa-angle-right"></i></span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- CONTAINER END -->

		<!-- FOOTER START -->
		<jsp:include page="footer.jsp"></jsp:include>
		<div class="scroll-top">
			<div id="scrollup"></div>
		</div>
		<!-- FOOTER END -->
	</div>
	<script src="js/jquery-1.12.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/fotorama.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
