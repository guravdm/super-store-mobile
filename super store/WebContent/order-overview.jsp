<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Order ovrerview</title>

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
							<div class="col-md-12"></div>
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="navbar.jsp"></jsp:include>
		</header>
		<!-- HEADER END -->

		<!-- BANNER STRAT -->
		<div class="banner inner-banner align-center">
			<div class="container">
				<section class="banner-detail">
					<h1 class="banner-title">Checkout</h1>
					<div class="bread-crumb right-side">
						<ul>
							<li><a href="index.jsp">Home</a>/</li>
							<li><a href="cart.jsp">Cart</a>/</li>
							<li><span>Checkout</span></li>
						</ul>
					</div>
				</section>
			</div>
		</div>
		<!-- BANNER END -->

		<!-- CONTAIN START -->
		<section class="checkout-section ptb-50">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="checkout-step mb-40">
							<ul>
								<li><a href="checkout.jsp">
										<div class="step">
											<div class="line"></div>
											<div class="circle">1</div>
										</div> <span>Shipping</span>
								</a></li>
								<li class="active"><a href="order-overview.jsp">
										<div class="step">
											<div class="line"></div>
											<div class="circle">2</div>
										</div> <span>Order Overview</span>
								</a></li>
								<li><a href="payment.jsp">
										<div class="step">
											<div class="line"></div>
											<div class="circle">3</div>
										</div> <span>Payment</span>
								</a></li>
								<li><a href="order-complete.jsp">
										<div class="step">
											<div class="line"></div>
											<div class="circle">4</div>
										</div> <span>Order Complete</span>
								</a></li>
								<li>
									<div class="step">
										<div class="line"></div>
									</div>
								</li>
							</ul>
							<hr>
						</div>
						<div class="checkout-content">
							<div class="row">
								<div class="col-xs-12">
									<div class="heading-part align-center">
										<h2 class="heading">Order Overview</h2>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-8 mb-sm-30">
									<div class="cart-item-table commun-table mb-30">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>Product</th>
														<th>Product Detail</th>
														<th>Sub Total</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="product-page.html">
																<div class="product-image">
																	<img alt="SuperStore" src="images/1.jpg">
																</div>
														</a></td>
														<td><div class="product-title">
																<a href="product-page.html">Cross Colours Camo Print
																	Tank half mengo</a>
																<div class="product-info-stock-sku m-0">
																	<div>
																		<label>Price: </label>
																		<div class="price-box">
																			<span class="info-deta price">$80.00</span>
																		</div>
																	</div>
																</div>
																<div class="product-info-stock-sku m-0">
																	<div>
																		<label>Quantity: </label> <span class="info-deta">1</span>
																	</div>
																</div>
															</div></td>
														<td><div data-id="100" class="total-price price-box">
																<span class="price">$80.00</span>
															</div></td>
														<td><i class="fa fa-trash cart-remove-item"
															data-id="100" title="Remove Item From Cart"></i></td>
													</tr>
													<tr>
														<td><a href="product-page.html">
																<div class="product-image">
																	<img alt="SuperStore" src="images/2.jpg">
																</div>
														</a></td>
														<td><div class="product-title">
																<a href="product-page.html">Cross Colours Camo Print
																	Tank half mengo</a>
																<div class="product-info-stock-sku m-0">
																	<div>
																		<label>Price: </label>
																		<div class="price-box">
																			<span class="info-deta price">$80.00</span>
																		</div>
																	</div>
																</div>
																<div class="product-info-stock-sku m-0">
																	<div>
																		<label>Quantity: </label> <span class="info-deta">1</span>
																	</div>
																</div>
															</div></td>
														<td><div data-id="100" class="total-price price-box">
																<span class="price">$80.00</span>
															</div></td>
														<td><i class="fa fa-trash cart-remove-item"
															data-id="100" title="Remove Item From Cart"></i></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="cart-total-table commun-table mb-30">
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
									<div class="right-side float-none-xs">
										<a href="payment.html" class="btn btn-black">Next</a>
									</div>
								</div>
								<div class="col-sm-4">
									<div class="cart-total-table address-box commun-table">
										<div class="table-responsive">
											<table class="table">
												<thead>
													<tr>
														<th>Address</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><ul>
																<li class="inner-heading"><b>Apparao Chopade</b></li>
																<li>
																	<p>kadambari aprtment,opp. SBI Bank</p>
																</li>
																<li>
																	<p>Belgaum,Khnapur Goa Road, Khanapur 591302</p>
																</li>
																<li>
																	<p>India</p>
																</li>
															</ul></td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
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
