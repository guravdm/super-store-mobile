<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="io.hard.util.DoConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>SuperStore index</title>

<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- CSS
  ================================================== -->
<jsp:include page="header-scripts.jsp"></jsp:include>
</head>
<body>
	<div class="main">

		<jsp:include page="header-nav.jsp"></jsp:include>


		<!--  Site Services Features Block Start  -->
		<jsp:include page="site-service.jsp"></jsp:include>
		<!--  Site Services Features Block End  -->

		<!-- CONTAIN START -->
		<section class="ptb-50 ptb-xs-30">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4 mb-xs-30">
						<div class="sidebar-block">
							<jsp:include page="categories.jsp"></jsp:include>
							<div class="sidebar-box sidebar-item hidden-xs">
								<div class="sidebar-contant">
									<div class="newsletter">
										<div class="newsletter-inner">
											<img src="images/newsletter-icon.png" alt="SuperStore">
											<h2 class="main_title">Subscribe Emails</h2>
											<span>Get Latest News & Update</span>
											<p>also the leap into electronic typesetting, remaining
												essentially</p>
											<form>
												<input type="email" placeholder="Your email address...">
												<button class="btn-color" type="button" title="Subscribe">Subscribe</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-9 col-sm-8">
						<div class="product-slider mb-40">
							<div class="row">
								<div class="col-md-12">
									<div class="">
										<div class="category-bar mb-20 p-0">
											<ul class="tab-stap">
												<li id="step1" class="active"><a
													href="javascript:void(0)">Featured Products</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="featured-product">
								<div class="pro_cat">
									<div id="data-step1" class="product-slider-main position-r"
										data-temp="tabdata">
										<div class="row mlr_-20">

											<%
												Connection con = DoConnection.getConnection();
												PreparedStatement ps = con
														.prepareStatement("select * from mobile_brands");
												ResultSet rs = ps.executeQuery();
												while (rs.next()) {
											%>
											<div class="col-md-4 col-xs-6 plr-20">
												<div class="product-item">
													<div class="product-image">
														<a
															href="product-page.jsp?proId=<%=rs.getString(1)%>&catId=<%=rs.getString("category_id")%>">
															<img src="images/blog_img2.jpg" alt="SuperStore">
														</a>
														<div class="product-detail-inner">
															<div class="detail-inner-left left-side">
																<ul>
																	<li class="pro-cart-icon">
																		<form>
																			<button title="Add to Cart"></button>
																		</form>
																	</li>
																</ul>
															</div>
														</div>
													</div>
													<div class="product-item-details">
														<div class="product-item-name">
															<a href="product-page.jsp?proId=<%=rs.getString(1)%>"><%=rs.getString(2)%>
																<%=rs.getString(3)%></a>
														</div>
														<div class="price-box">
															<span class="price"><%=rs.getString("sale_price")%></span>
														</div>
													</div>
												</div>
											</div>
											<%
												}
											%>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<!-- CONTAINER END -->

	<!-- FOOTER START -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- FOOTER END -->

	<div class="scroll-top">
		<div id="scrollup"></div>
	</div>
	<!-- FOOTER END -->
	</div>
	<jsp:include page="footer-scripts.jsp"></jsp:include>

</body>
</html>