
<%
	if (session.getAttribute("userId") != null) {

		session.setAttribute("page", "emp-reg");
		session.setMaxInactiveInterval(20 * 60);
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration</title>

<jsp:include page="admin-header-scripts.jsp"></jsp:include>
<link rel="stylesheet" type="text/css"
	href="vendor/plugins/datatables/media/css/datatables.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/plugins/datatables/media/css/datatables_addons.min.css">

<link rel="stylesheet" type="text/css"
	href="vendor/plugins/select2/css/core.css">

<script type="text/javascript" src="ajax/getUserName.js"></script>
</head>
<body onload="GetUserNames()" class="dashboard-page sb-l-o sb-r-c">

	<%
		if (session.getAttribute("userId") == null)
				response.sendRedirect("login.jsp");

			response.setHeader("Cache-Control",
					"no-cache, no-store, must-revalidate");
			response.setHeader("Expires", "0");
			response.setHeader("Pragma", "no-cache");
			String loginId = session.getAttribute("userId").toString();
			// String empName = session.getAttribute("empName").toString();
	%>


	<div id="main">
		<jsp:include page="topbar-admin.jsp"></jsp:include>

		<aside id="sidebar_left" class="nano nano-primary affix">
		<div class="sidebar-left-content nano-content">
			<jsp:include page="sidebar-left.jsp"></jsp:include>
			<div class="sidebar-toggle-mini">
				<a href="#"> <span class="fa fa-sign-out"></span>
				</a>
			</div>
		</div>
		</aside>

		<!-- Dashboard actual content start -->

		<section id="content_wrapper"> <header id="topbar"
			class="ph10">
		<div class="topbar-left">
			<ul class="nav nav-list nav-list-topbar pull-left">
				<li class="active"><a href="index.jsp">Dashboard</a></li>
				<li><a href="employee-list.jsp">List Item</a></li>
				<li><a href="#">New Entry</a></li>
			</ul>
		</div>
		<div class="topbar-right hidden-xs hidden-sm">
			<a href="employee-list.jsp"
				class="btn btn-default btn-sm light fw600 ml10"> <span
				class="fa fa fa-arrow-left"></span> Back
			</a> <a href="emp-reg.jsp"
				class="btn btn-default btn-sm light fw600 ml10"> <span
				class="fa fa fa-refresh"></span> Refresh
			</a>
		</div>
		</header> <section id="content" class="animated fadeIn">



		<div class="tray tray-center">
			<div class="admin-form theme-primary mw1000 center-block"
				style="padding-bottom: 175px;">
				<div class="panel heading-border">
					<form method="post" action="employeeReg" id="sub_form"
						autocomplete="off">
						<div class="panel-body bg-light">
							<div class="section-divider mt20 mb40">
								<span> Employee Registration</span>
							</div>

							<%
								session.setMaxInactiveInterval(20 * 60);

									if (session.getAttribute("smsg") != null) {
							%>
							<div id="fadeOutFun"
								class="alert alert-micro alert-border-left alert-success alert-dismissable">
								<button type="button" class="close" data-dismiss="alert"
									aria-hidden="true">�</button>
								<i class="fa fa-check pr10"></i> You
								<%=session.getAttribute("smsg")%>
							</div>
							<%
								session.removeAttribute("smsg");
									}
							%>

							<div class="section row" id="spy1">
								<div class="col-md-12">
									<label for="firstname" class="field prepend-icon"> <input
										type="text" name="firstname" id="firstname" class="gui-input"
										placeholder="Your Name..."> <label for="firstname"
										class="field-icon"> <i class="fa fa-user"></i>
									</label>
									</label>
								</div>

								<!-- <div class="col-md-6">
									<label for="lastname" class="field prepend-icon"> <input
										type="text" name="lastname" id="lastname" class="gui-input"
										placeholder="Last name..."> <label for="lastname"
										class="field-icon"> <i class="fa fa-user"></i>
									</label>
									</label>
								</div> -->
							</div>

							<input type="hidden" name="loginId" id="loginId"
								value="<%=loginId%>" class="form-control" />

							<!-- <div class="section">
								<label for="useremail" class="field prepend-icon"> <input
									type="email" name="useremail" id="useremail" class="gui-input"
									placeholder="Email address"> <label for="useremail"
									class="field-icon"> <i class="fa fa-envelope"></i>
								</label>
								</label>
							</div> -->

							<div class="section row">
								<div class="col-md-6">
									<label for="username" class="field prepend-icon"> <input
										type="tel" name="username" id="username"
										onkeyup="GetUserNames()" class="gui-input phone-group"
										placeholder="User Name"> <label for="username"
										class="field-icon"> <i class="fa fa-user"></i>
									</label> <span id="folderwarning" name="folderwarning"
										style="color: red">username already exists</span>
									</label>
								</div>

								<div class="col-md-6">
									<label for="role" class="field prepend-icon"> <select
										name="role" id="role"
										class="select2-single form-control gui-input">
											<option></option>
											<option value="Admin">Admin</option>
											<option value="Shop Keeper">Shop Keeper</option>
											<!-- <option value="Other">Other</option> -->
									</select>
									</label>
								</div>

							</div>

							<div class="section row">
								<div class="col-md-6">
									<label for="password" class="field prepend-icon"> <input
										type="password" name="password" id="password"
										class="gui-input" placeholder="Password"> <label
										for="password" class="field-icon"> <i
											class="fa fa-lock"></i>
									</label>
									</label>
								</div>

								<div class="col-md-6">
									<label for="repeatPassword" class="field prepend-icon">
										<input type="password" name="repeatPassword"
										id="repeatPassword" class="gui-input"
										placeholder="Confirm Password"> <label
										for="repeatPassword" class="field-icon"> <i
											class="fa fa-unlock-alt"></i>
									</label>
									</label>
								</div>
							</div>

							<div class="section row">
								<div class="col-md-6">
									<label for="mobileno" class="field prepend-icon"> <input
										type="text" name="mobileno" id="mobileno" class="gui-input"
										placeholder="Mobile Number"> <label for="mobileno"
										class="field-icon"> <i class="fa fa-mobile-phone"></i>
									</label>
									</label>
								</div>
							</div>

							<div class="section" id="spy3">
								<label for="comment" class="field prepend-icon"> <textarea
										class="gui-textarea" id="comment" name="comment"
										placeholder="Address"></textarea> <label for="comment"
									class="field-icon"> <i class="fa fa-comments"></i>
								</label> <span class="input-footer"> <strong>A Addess!:</strong>
										Use this area to write an address of a Vendor..
								</span>
								</label>
							</div>

							<hr class="alt short">
						</div>

						<div class="panel-footer text-right">
							<button type="submit" id="btnSaveChanges" name="btnSaveChanges"
								class="button btn-primary">Submit</button>
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
									username : {
										required : true
									},
									firstname : {
										required : true
									},
									role : {
										required : true
									},
									useremail : {
										required : true,
										email : true
									},
									upload1 : {
										required : true,
										extension : "jpg|png|gif|jpeg|doc|docx|pdf|xls|rar|zip"
									},
									comment : {
										required : true,
										minlength : 6
									},
									mobileno : {
										required : true,
										digits : true,
										minlength : 10,
										maxlength : 10
									},
									password : {
										required : true,
										minlength : 6,
										maxlength : 16
									},
									repeatPassword : {
										required : true,
										minlength : 6,
										maxlength : 16,
										equalTo : '#password'
									},
								},
	
								/* @validation error messages 
								---------------------------------------------- */
	
								messages : {
									username : {
										required : 'Please Enter username'
									},
									firstname : {
										required : 'Please enter your name'
									},
									role : {
										required : 'Please select role'
									},
									useremail : {
										required : 'Enter email address',
										email : 'Enter a VALID email address'
									},
									upload1 : {
										required : 'Please browse a file',
										extension : 'File format not supported'
									},
									comment : {
										required : 'Oops you forgot to give address',
										minlength : 'Enter at least 5 characters or more'
									},
									password : {
										required : 'Please enter a password'
									},
									repeatPassword : {
										required : 'Please repeat the above password',
										equalTo : 'Password mismatch detected'
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
	} else {
		response.sendRedirect("login.jsp");
	}
%>

