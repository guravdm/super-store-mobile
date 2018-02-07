<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>payment</title>
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
									<a class="navbar-brand page-scroll" href="index.jsp"> <img
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
								<li><a href="order-overview.jsp">
										<div class="step">
											<div class="line"></div>
											<div class="circle">2</div>
										</div> <span>Order Overview</span>
								</a></li>
								<li class="active"><a href="payment.jsp">
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
										<h2 class="heading">Select a payment method</h2>
									</div>
								</div>
							</div>
							<div class="row">
								<div
									class="col-lg-6 col-md-8 col-sm-8 col-lg-offset-3 col-sm-offset-2">
									<div class="payment-option-box mb-30">
										<div class="payment-option-box-inner gray-bg">
											<div class="payment-top-box">
												<div class="radio-box left-side">
													<span> <input type="radio" id="cash" value="cash"
														name="payment_type">
													</span> <label for="cash">Would you like to pay by Cash on
														Delivery?</label>
												</div>
											</div>
											<p>Vestibulum semper accumsan nisi, at blandit tortor
												maxi'mus in phasellus malesuada sodales odio, at dapibus
												libero malesuada quis.</p>
										</div>
									</div>
									<div class="right-side float-none-xs">
										<a class="btn btn-black" href="order-complete.html">Place
											Order<span><i class="fa fa-angle-right"></i></span>
										</a>
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
