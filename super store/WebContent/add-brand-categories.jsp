
<%@page import="io.hard.util.DoConnection"%>
<%
	if (session.getAttribute("userId") != null) {

		session.setAttribute("page", "employee-list");
		session.setMaxInactiveInterval(10 * 60);
%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Brands</title>
<jsp:include page="admin-header-scripts.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="vendor/plugins/datatables/media/css/datatables.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/plugins/datatables/media/css/datatables_addons.min.css">

<link rel="stylesheet" type="text/css"
	href="vendor/plugins/select2/css/core.css">

<script type="text/javascript" src="ajax/getUserName.js"></script>
</head>
<body class="datatables-page" data-spy="scroll" data-target="#nav-spy"
	data-offset="300">



	<%
		if (session.getAttribute("userId") == null)
				response.sendRedirect("login.jsp");

			response.setHeader("Cache-Control",
					"no-cache, no-store, must-revalidate");
			response.setHeader("Expires", "0");
			response.setHeader("Pragma", "no-cache");
			String loginId = session.getAttribute("userId").toString();
			// String empName = session.getAttribute("empName").toString();
			Connection con = DoConnection.getConnection();
	%>
	<jsp:include page="theme-options.jsp"></jsp:include>

	<div id="main">
		<jsp:include page="topbar-admin.jsp"></jsp:include>

		<aside id="sidebar_left" class="nano nano-primary affix">
		<div class="sidebar-left-content nano-content">
			<jsp:include page="sidebar-left.jsp"></jsp:include>
			<div class="sidebar-toggle-mini"></div>
		</div>
		</aside>
		<section id="content_wrapper"> <header id="topbar"
			class="ph10">
		<div class="topbar-left">
			<ul class="nav nav-list nav-list-topbar pull-left">
				<li class="active"><a href="ad-dashboard.jsp">Dashboard</a></li>
				<li><a href="#">List Item</a></li>
			</ul>
		</div>
		<div class="topbar-right hidden-xs hidden-sm">
			<a
				href="add-brand-categories.jsp?mobId=<%=request.getParameter("mobId")%>"
				class="btn btn-default btn-sm light fw600 ml10"> <span
				class="fa fa fa-arrow-left"></span> Refresh
			</a>
		</div>
		</header> <section id="content" class="table-layout animated fadeIn">
		<div class="tray tray-center">
			<div class="admin-form theme-primary mw1000 center-block"
				style="padding-bottom: 175px;">
				<div class="panel heading-border panel-primary">
					<form method="post" action="AddBrandReg" id="sub_form"
						autocomplete="off" novalidate="novalidate">
						<div class="panel-body bg-light">
							<div class="section-divider mt20 mb40">
								<span> Mobile Brand Registration</span>
							</div>

							<input type="hidden" name="loginId" id="loginId" value="admin"
								class="form-control">


							<%
								PreparedStatement ps = con
											.prepareStatement("select * from brand_names where id = ?");
									ps.setString(1, request.getParameter("mobId"));
									ResultSet rs = ps.executeQuery();
									while (rs.next()) {
							%>
							<input type="hidden" name="cateId" id="cateId"
								value="<%=rs.getString(1)%>" class="form-control">

							<div class="section">
								<label for="brandname" class="field prepend-icon"> <input
									required type="text" name="brandname" id="brandname"
									readonly="readonly" value="<%=rs.getString(2)%>"
									class="gui-input" placeholder="Brand Name"> <label
									for="brandname" class="field-icon"> <i
										class="fa fa-envelope"></i>
								</label>
								</label>
							</div>
							<%
								}
							%>



							<div class="section row">
								<div class="col-md-6">
									<label for="modelno" class="field prepend-icon"> <input
										type="tel" name="modelno" id="modelno"
										class="gui-input phone-group" placeholder="Model Number">
										<label for="modelno" class="field-icon"> <i
											class="fa fa-user"></i>
									</label>
									</label>
								</div>

								<div class="col-md-6">
									<label for="modelname" class="field prepend-icon"> <input
										type="tel" name="modelname" id="modelname"
										class="gui-input phone-group" placeholder="Mobile Name">
										<label for="modelname" class="field-icon"> <i
											class="fa fa-user"></i>
									</label>
									</label>
								</div>
							</div>


							<div class="section row">
								<div class="col-md-6">
									<label for="saleprice" class="field prepend-icon"> <input
										type="tel" name="saleprice" id="saleprice"
										class="gui-input phone-group" placeholder="Sale Price">
										<label for="saleprice" class="field-icon"> <i
											class="fa fa-user"></i>
									</label>
									</label>
								</div>

								<div class="col-md-6">
									<label for="purchaseprice" class="field prepend-icon">
										<input type="tel" name="purchaseprice" id="purchaseprice"
										class="gui-input phone-group" placeholder="Purchase Price">
										<label for="purchaseprice" class="field-icon"> <i
											class="fa fa-user"></i>
									</label>
									</label>
								</div>
							</div>

							<div class="section row">
								<div class="col-md-6">
									<label for="color" class="field prepend-icon"> <select
										name="color" id="role"
										class="select2-single form-control gui-input">
											<option></option>
											<option value="Black">Black</option>
											<option value="White">White</option>
											<option value="Grey">Grey</option>
											<option value="Silver">Silver</option>
											<option value="Matte Black">Matte Black</option>
											<option value="Tempered Blue">Tempered Blue</option>
											<option value="Blush Gold">Blush Gold</option>
											<option value="Lunar Grey">Lunar Grey</option>
											<option value="Starry Black">Starry Black</option>
									</select>
									</label>
								</div>
							</div>

							<div class="section" id="spy3">
								<label for="comment" class="field prepend-icon"> <textarea
										class="gui-textarea" id="comment" name="comment" required
										placeholder="add some info"></textarea> <label for="comment"
									class="field-icon"> <i class="fa fa-comments"></i>
								</label> <span class="input-footer"> <strong>Info About
											Brand:</strong> Use this area to write brand details..
								</span>
								</label>
							</div>
							<hr class="alt short">
						</div>

						<div class="panel-footer text-right">
							<button type="submit" class="button btn-primary">Submit</button>
							<button type="reset" class="button">Cancel</button>
						</div>

					</form>
				</div>
			</div>
		</div>
		</section> </section>
	</div>


	<jsp:include page="admin-footer-scripts.jsp"></jsp:include>

	<script src="assets/admin-tools/admin-forms/js/jquery.validate.min.js"></script>

	<script
		src="assets/admin-tools/admin-forms/js/additional-methods.min.js"></script>

	<script src="vendor/plugins/select2/js/select2.min.js"></script>

	<script src="assets/js/utility/utility.js"></script>
	<script src="assets/js/demo/demo.js"></script>
	<script src="assets/js/main.js"></script>

	<script type="text/javascript">
		jQuery(document)
			.ready(
				function() {
	
					"use strict";
	
					// Init Theme Core    
					Core.init();
	
					// Init Demo JS     
					Demo.init();
	
					/* @custom validation method (smartCaptcha) 
					------------------------------------------------------------------ */
	
					$.validator.methods.smartCaptcha = function(value,
						element, param) {
						return value == param;
					};
	
					$("#sub_form")
						.validate(
							{
	
								/* @validation states + elements 
								------------------------------------------- */
	
								errorClass : "state-error",
								validClass : "state-success",
								errorElement : "em",
	
								/* @validation rules 
								------------------------------------------ */
	
								rules : {
									purchaseprice : {
										required : true,
										digits : true
									},
									saleprice : {
										required : true,
										digits : true
									},
									modelno : {
										required : true,
									},
									modelname : {
										required : true,
									},
									color : {
										required : true,
									},
									comment : {
										required : true,
										minlength : 6
									}
								},
	
								/* @validation error messages 
								---------------------------------------------- */
	
								messages : {
									purchaseprice : {
										required : 'Please Enter purchase price'
									},
									saleprice : {
										required : 'Please Enter sale price'
									},
									modelno : {
										required : 'Please Enter model'
									},
									modelname : {
										required : 'Please Enter Mobile Name'
									},
									color : {
										required : 'Please Select color'
									},
									comment : {
										required : 'Oops you forgot to give details',
										minlength : 'Enter at least 5 characters or more'
									},
								},
	
								/* @validation highlighting + error placement  
								---------------------------------------------------- */
	
								highlight : function(element,
									errorClass, validClass) {
									$(element)
										.closest('.field')
										.addClass(
											errorClass)
										.removeClass(
											validClass);
								},
								unhighlight : function(element,
									errorClass, validClass) {
									$(element)
										.closest('.field')
										.removeClass(
											errorClass)
										.addClass(
											validClass);
								},
								errorPlacement : function(
									error, element) {
									if (element.is(":radio")
										|| element
											.is(":checkbox")) {
										element
											.closest(
												'.option-group')
											.after(error);
									} else {
										error
											.insertAfter(element
												.parent());
									}
								}
							});
	
					// Cache several DOM elements
					var pageHeader = $('.content-header').find('b');
					var adminForm = $('.admin-form');
					var options = adminForm.find('.option');
					var switches = adminForm.find('.switch');
					var buttons = adminForm.find('.button');
					var Panel = adminForm.find('.panel');
	
					// Form Skin Switcher
					$('#skin-switcher a')
						.on(
							'click',
							function() {
								var btnData = $(this).data(
									'form-skin');
	
								$('#skin-switcher a')
									.removeClass(
										'item-active');
								$(this).addClass('item-active')
	
								adminForm
									.each(function(i, e) {
										var skins = 'theme-primary theme-info theme-success theme-warning theme-danger theme-alert theme-system theme-dark'
										var panelSkins = 'panel-primary panel-info panel-success panel-warning panel-danger panel-alert panel-system panel-dark'
										$(e)
											.removeClass(
												skins)
											.addClass(
												'theme-'
												+ btnData);
										Panel
											.removeClass(
												panelSkins)
											.addClass(
												'panel-'
												+ btnData);
										pageHeader
											.removeClass()
											.addClass(
												'text-'
												+ btnData);
									});
	
								$(options)
									.each(
										function(i, e) {
											if ($(e)
													.hasClass(
														'block')) {
												$(e)
													.removeClass()
													.addClass(
														'block mt15 option option-'
														+ btnData);
											} else {
												$(e)
													.removeClass()
													.addClass(
														'option option-'
														+ btnData);
											}
										});
	
								// var sliders = $('.ui-timepicker-div', adminForm).find('.ui-slider');
								$('body')
									.find('.ui-slider')
									.each(
										function(i, e) {
											$(e)
												.addClass(
													'slider-primary');
										});
	
								$(switches)
									.each(
										function(i, ele) {
											if ($(ele)
													.hasClass(
														'switch-round')) {
												if ($(
														ele)
														.hasClass(
															'block')) {
													$(
														ele)
														.removeClass()
														.addClass(
															'block mt15 switch switch-round switch-'
															+ btnData);
												} else {
													$(
														ele)
														.removeClass()
														.addClass(
															'switch switch-round switch-'
															+ btnData);
												}
											} else {
												if ($(
														ele)
														.hasClass(
															'block')) {
													$(
														ele)
														.removeClass()
														.addClass(
															'block mt15 switch switch-'
															+ btnData);
												} else {
													$(
														ele)
														.removeClass()
														.addClass(
															'switch switch-'
															+ btnData);
												}
											}
	
										});
								buttons
									.removeClass()
									.addClass(
										'button btn-'
										+ btnData);
							});
	
					setTimeout(
						function() {
							adminForm.addClass('theme-primary');
							Panel.addClass('panel-primary');
							pageHeader.addClass('text-primary');
	
							$(options)
								.each(
									function(i, e) {
										if ($(e).hasClass(
												'block')) {
											$(e)
												.removeClass()
												.addClass(
													'block mt15 option option-primary');
										} else {
											$(e)
												.removeClass()
												.addClass(
													'option option-primary');
										}
									});
	
							$(switches)
								.each(
									function(i, ele) {
										if ($(ele)
												.hasClass(
													'switch-round')) {
											if ($(ele)
													.hasClass(
														'block')) {
												$(ele)
													.removeClass()
													.addClass(
														'block mt15 switch switch-round switch-primary');
											} else {
												$(ele)
													.removeClass()
													.addClass(
														'switch switch-round switch-primary');
											}
										} else {
											if ($(ele)
													.hasClass(
														'block')) {
												$(ele)
													.removeClass()
													.addClass(
														'block mt15 switch switch-primary');
											} else {
												$(ele)
													.removeClass()
													.addClass(
														'switch switch-primary');
											}
										}
									});
	
						}, 800);
	
					$(".select2-single").select2();
	
					// Init Select2 - Contextuals (via html classes)
					$(".select2-primary").select2(); // select2 contextual - primary
					$(".select2-success").select2(); // select2 contextual - success
					$(".select2-info").select2(); // select2 contextual - info
					$(".select2-warning").select2(); /*  // select2 contextual - warning  */
	
				});
	</script>
	<script>
		$(document).ready(function() {
	
			$('#fadeOutFun').fadeOut(5000, 'swing', function() {
				//callback function after animation finished
				$("#fadeOutFun").attr('value', 'fadeOut() is now Complete');
			});
		});
	</script>

</body>
</html>

<%
	if (con != null) {
			con.close();
		}
	} else {
		response.sendRedirect("login.jsp");
	}
%>


