<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Mirrored from aaryaweb.info/html/superstore/sps002/product-page.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 20 Jan 2018 14:34:57 GMT -->
<head>
<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>SuperStore Product</title>

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
										<div class="main-search"></div>
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
					<h1 class="banner-title">Mobile</h1>
					<div class="bread-crumb right-side">
						<ul>
							<li><a href="index.jsp">Home</a>/</li>
							<li><span>Mobile</span></li>
						</ul>
					</div>
				</section>
			</div>
		</div>
		<!-- BANNER END -->

		<!-- CONTAIN START -->
		<section class="pt-50">
			<div class="container">
				<div class="row">
					<div class="col-md-5 col-sm-5 mb-xs-30">
						<div class="fotorama" data-nav="thumbs"
							data-allowfullscreen="native">
							<a href="#"><img src="images/blog_img2.jpg" alt="SuperStore"></a>
							<a href="#"><img src="images/blog_img2.jpg" alt="SuperStore"></a>
							<a href="#"><img src="images/blog_img2.jpg" alt="SuperStore"></a>
							<a href="#"><img src="images/blog_img2.jpg" alt="SuperStore"></a>
							<a href="#"><img src="images/blog_img2.jpg" alt="SuperStore"></a>
						</div>
					</div>
					<div class="col-md-7 col-sm-7">
						<div class="row">
							<div class="col-xs-12">
								<div class="product-detail-main">
									<div class="product-item-details">
										<h1 class="product-item-name">Xiaomi Mi Note 4</h1>
									</div>
									<div class="price-box">
										<span class="price">7500</span>
									</div>
									<div class="product-info-stock-sku">
										<div>
											<label>Availability: </label> <span class="info-deta">In
												stock</span>
										</div>
									</div>
									<p>Product Information : Give some product information</p>
									<div class="product-color select-arrow mb-20">
										<label>Color</label> <select class="selectpicker form-control"
											id="select-by-color">
											<option selected="selected" value="Black">Black</option>
											<option value="#">Grey</option>
											<option value="#">White</option>
											<option value="#">Silver</option>
										</select>
									</div>
									<div class="mb-40">
										<div class="product-qty">
											<label for="qty">Qty:</label>
											<div class="custom-qty">
												<button
													onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;return false;"
													class="reduced items" type="button">
													<i class="fa fa-minus"></i>
												</button>
												<input type="text" class="input-text qty" title="Qty"
													value="1" maxlength="8" id="qty" name="qty">
												<button
													onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;"
													class="increase items" type="button">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</div>
										<div class="bottom-detail cart-button">
											<ul>
												<li class="pro-cart-icon">
													<form>
														<button title="Add to Cart" class="btn-black">
															<span></span>Add to Cart
														</button>
													</form>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</section>
	<section class="ptb-50">
		<div class="container">
			<div class="product-detail-tab">
				<div class="row">
					<div class="col-md-12">
						<div id="tabs">
							<ul class="nav nav-tabs">
								<li><a class="tab-Description selected" title="Description">Description</a></li>
								<li><a class="tab-Product-Tags" title="Product-Tags">Product-Tags</a></li>
							</ul>
						</div>
						<div id="items">
							<div class="tab_content">
								<ul>
									<li>
										<div class="items-Description selected gray-bg">
											<div class="Description">
												<strong>The standard Lorem Ipsum passage, used
													since the 1500s</strong><br />
												<p>Proin lectus ipsum, gravida et mattis vulputate,
													tristique ut lectus. Sed et lorem nunc. Vestibulum ante
													ipsum primis in faucibus orci luctus et ultrices posuere
													cubilia Curae; Aenean eleifend laoreet congue. Vivamus
													adipiscing nisl ut dolor dignissim semper. Nulla luctus
													malesuada Lorem Ipsum is simply dummy text of the printing
													and typesetting industry. Lorem Ipsum has been the
													industry's standard dummy took a galley of type and
													scrambled it to make a type specimen book. It has survived
													not only five centuries, but also the leap into electronic
													typesetting, remaining essentially unchanged. It was
													popularised in the 1960s with the release of Letraset
													sheets</p>
												<p>Tristique ut lectus. Sed et lorem nunc. Vestibulum
													ante ipsum primis in faucibus orci luctus et ultrices
													posuere cubilia Curae; Aenean eleifend laoreet congue.
													Vivamus adipiscing nisl ut dolor dignissim semper. Nulla
													luctus malesuada Lorem Ipsum is simply dummy text of the
													printing and typesetting industry.</p>
											</div>
										</div>
									</li>
									<li>
										<div class="items-Product-Tags gray-bg">
											<strong>Section 1.10.32 of "de Finibus Bonorum et
												Malorum", written by Cicero in 45 BC</strong><br /> Sed ut
											perspiciatis unde omnis iste natus error sit voluptatem
											accusantium doloremque laudantium, totam rem aperiam, eaque
											ipsa quae ab illo inventore veritatis et quasi architecto
											beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem
											quia voluptas sit aspernatur aut odit aut fugit, sed quia
											consequuntur
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- <section class="pb-95">
		<div class="container">
			<div class="product-slider">
				<div class="row">
					<div class="col-xs-12">
						<div class="heading-part mb-20">
							<h2 class="main_title">Related Products</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="product-slider-main position-r">
						dresses
						<div class="owl-carousel pro_rel_slider">
							id="product-slider"
							<div class="item">
								<div class="product-item">
									<div class="sale-label">
										<span>Sale</span>
									</div>
									<div class="product-image">
										<a href="#"> <img src="images/1.jpg" alt="SuperStore">
										</a>
										<div class="product-detail-inner">
											<div class="detail-inner-left left-side">
												<ul>
													<li class="pro-cart-icon">
														<form>
															<button title="Add to Cart"></button>
														</form>
													</li>
													<li class="pro-wishlist-icon"><a href="#"
														title="Wishlist"></a></li>
													<li class="pro-compare-icon"><a href="#"
														title="Compare"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-item-details">
										<div class="product-item-name">
											<a href="#">Defyant Reversible Dot Shorts</a>
										</div>
										<div class="price-box">
											<span class="price">$80.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="product-item">
									<div class="product-image">
										<a href="#"> <img src="images/2.jpg" alt="SuperStore">
										</a>
										<div class="product-detail-inner">
											<div class="detail-inner-left left-side">
												<ul>
													<li class="pro-cart-icon">
														<form>
															<button title="Add to Cart"></button>
														</form>
													</li>
													<li class="pro-wishlist-icon"><a href="#"
														title="Wishlist"></a></li>
													<li class="pro-compare-icon"><a href="#"
														title="Compare"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-item-details">
										<div class="product-item-name">
											<a href="#">Defyant Reversible Dot Shorts</a>
										</div>
										<div class="price-box">
											<span class="price">$80.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="product-item">
									<div class="product-image">
										<a href="#"> <img src="images/3.jpg" alt="SuperStore">
										</a>
										<div class="product-detail-inner">
											<div class="detail-inner-left left-side">
												<ul>
													<li class="pro-cart-icon">
														<form>
															<button title="Add to Cart"></button>
														</form>
													</li>
													<li class="pro-wishlist-icon"><a href="#"
														title="Wishlist"></a></li>
													<li class="pro-compare-icon"><a href="#"
														title="Compare"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-item-details">
										<div class="product-item-name">
											<a href="#">Defyant Reversible Dot Shorts</a>
										</div>
										<div class="price-box">
											<span class="price">$80.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="product-item">
									<div class="product-image">
										<a href="#"> <img src="images/4.jpg" alt="SuperStore">
										</a>
										<div class="product-detail-inner">
											<div class="detail-inner-left left-side">
												<ul>
													<li class="pro-cart-icon">
														<form>
															<button title="Add to Cart"></button>
														</form>
													</li>
													<li class="pro-wishlist-icon"><a href="#"
														title="Wishlist"></a></li>
													<li class="pro-compare-icon"><a href="#"
														title="Compare"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-item-details">
										<div class="product-item-name">
											<a href="#">Defyant Reversible Dot Shorts</a>
										</div>
										<div class="price-box">
											<span class="price">$80.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="product-item">
									<div class="product-image">
										<a href="#"> <img src="images/5.jpg" alt="SuperStore">
										</a>
										<div class="product-detail-inner">
											<div class="detail-inner-left left-side">
												<ul>
													<li class="pro-cart-icon">
														<form>
															<button title="Add to Cart"></button>
														</form>
													</li>
													<li class="pro-wishlist-icon"><a href="#"
														title="Wishlist"></a></li>
													<li class="pro-compare-icon"><a href="#"
														title="Compare"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-item-details">
										<div class="product-item-name">
											<a href="#">Defyant Reversible Dot Shorts</a>
										</div>
										<div class="price-box">
											<span class="price">$80.00</span>
										</div>
									</div>
								</div>
							</div>
							<div class="item">
								<div class="product-item">
									<div class="product-image">
										<a href="#"> <img src="images/3.jpg" alt="SuperStore">
										</a>
										<div class="product-detail-inner">
											<div class="detail-inner-left left-side">
												<ul>
													<li class="pro-cart-icon">
														<form>
															<button title="Add to Cart"></button>
														</form>
													</li>
													<li class="pro-wishlist-icon"><a href="#"
														title="Wishlist"></a></li>
													<li class="pro-compare-icon"><a href="#"
														title="Compare"></a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="product-item-details">
										<div class="product-item-name">
											<a href="#">Defyant Reversible Dot Shorts</a>
										</div>
										<div class="price-box">
											<span class="price">$80.00</span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<!-- CONTAINER END -->

	<!-- FOOTER START -->
	<jsp:include page="footer.jsp"></jsp:include>
	<div class="scroll-top">
		<div id="scrollup"></div>
	</div>
	<!-- FOOTER END -->
	<script src="js/jquery-1.12.3.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/fotorama.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/custom.js"></script>
</body>
</html>
