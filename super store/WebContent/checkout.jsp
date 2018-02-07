<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Checkout</title>
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
								<li class="active"><a href="checkout.jsp">
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
										<h2 class="heading">Please fill up your Shipping details</h2>
									</div>
								</div>
							</div>
							<div class="row">
								<div
									class="col-lg-6 col-md-8 col-sm-8 col-lg-offset-3 col-sm-offset-2">
									<form action="#" class="main-form full">
										<div class="">
											<div class="row">
												<div class="col-xs-12 mb-20">
													<div class="heading-part">
														<h3 class="sub-heading">Customer Details</h3>
													</div>
													<hr>
												</div>
												<div class="col-sm-12">
													<div class="input-box">
														<input type="text" required placeholder="Full Name">
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-box">
														<input type="text" required placeholder="Email Address">
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-box">
														<input type="text" required placeholder="Contact Number">
													</div>
												</div>
												<div class="col-sm-12">
													<div class="input-box">
														<input type="text" required placeholder="Billing Address">
														<span>Please provide the number and street.</span>
													</div>
												</div>
												<div class="col-sm-12">
													<div class="input-box">
														<input type="text" required placeholder="Billing Landmark">
														<span>Please include landmark (e.g : Opposite Bank)
															as the carrier service may find it easier to locate your
															address.</span>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-box">
														<select name="billingcountryId" id="billingcountryid">
															<option value="IN">India</option>
														</select>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-box">
														<select name="billingstateId" id="billingstateid">
															<option value="">Select a State</option>
															<option value="AP">Andhra Pradesh</option>
															<option value="AR">Arunachal Pradesh</option>
															<option value="AS">Assam</option>
															<option value="BR">Bihar</option>
															<option value="CT">Chhattisgarh</option>
															<option value="GA">Goa</option>
															<option value="GJ">Gujarat</option>
															<option value="HR">Haryana</option>
															<option value="HP">Himachal Pradesh</option>
															<option value="JK">Jammu and Kashmir</option>
															<option value="JH">Jharkhand</option>
															<option value="KA">Karnataka</option>
															<option value="KL">Kerala</option>
															<option value="MP">Madhya Pradesh</option>
															<option value="MH">Maharashtra</option>
															<option value="MN">Manipur</option>
															<option value="ML">Meghalaya</option>
															<option value="MZ">Mizoram</option>
															<option value="NL">Nagaland</option>
															<option value="OR">Orissa</option>
															<option value="PB">Punjab</option>
															<option value="RJ">Rajasthan</option>
															<option value="SK">Sikkim</option>
															<option value="TN">Tamil Nadu</option>
															<option value="TS">Telangana</option>
															<option value="TR">Tripura</option>
															<option value="UK">Uttarakhand</option>
															<option value="UP">Uttar Pradesh</option>
															<option value="WB">West Bengal</option>
															<option value="AN">Andaman and Nicobar Islands</option>
															<option value="CH">Chandigarh</option>
															<option value="DN">Dadar and Nagar Haveli</option>
															<option value="DD">Daman and Diu</option>
															<option value="DL">Delhi</option>
															<option value="LD">Lakshadeep</option>
															<option value="PY">Pondicherry (Puducherry)</option>
														</select>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-box">
														<input type="text" required placeholder="Select City">
													</div>
												</div>
												<div class="col-sm-6">
													<div class="input-box">
														<input type="text" required placeholder="Postcode/zip">
													</div>
												</div>
												<div class="col-sm-12">
													<a href="order-overview.jsp"
														class="btn btn-color right-side">Next</a>
												</div>
											</div>
										</div>
									</form>
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
