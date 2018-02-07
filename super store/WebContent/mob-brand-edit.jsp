
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
<title>Brand List</title>

<link rel='stylesheet' type='text/css'
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700'>

<link rel="stylesheet" type="text/css"
	href="vendor/plugins/datatables/media/css/datatables.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor/plugins/datatables/media/css/datatables_addons.min.css">

<jsp:include page="admin-header-scripts.jsp"></jsp:include>
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
			<a href="mob-brand-edit.jsp?uId=<%=request.getParameter("uId")%>"
				class="btn btn-default btn-sm light fw600 ml10"> <span
				class="fa fa fa-arrow-left"></span> Refresh
			</a>
		</div>
		</header> <section id="content" class="table-layout animated fadeIn">
		<div class="tray tray-center">
			<div class="admin-form theme-primary mw1000 center-block"
				style="padding-bottom: 175px;">
				<div class="panel heading-border panel-primary">
					<form method="post" action="UpdateBrand" id="sub_form"
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
									ps.setString(1, request.getParameter("uId"));
									ResultSet rs = ps.executeQuery();
									while (rs.next()) {
							%>
							<input type="hidden" name="unqId" id="unqId"
								value="<%=rs.getString(1)%>" class="form-control">
							<div class="section">
								<label for="brandname" class="field prepend-icon"> <input
									required type="text" name="brandname" id="brandname"
									value="<%=rs.getString("category_name")%> " class="gui-input"
									placeholder="Brand Name"> <label for="brandname"
									class="field-icon"> <i class="fa fa-envelope"></i>
								</label>
								</label>
							</div>

							<div class="section" id="spy3">
								<label for="comment" class="field prepend-icon"> <textarea
										class="gui-textarea" id="comment" name="comment" required
										placeholder="Comment"><%=rs.getString("about")%></textarea> <label
									for="comment" class="field-icon"> <i
										class="fa fa-comments"></i>
								</label> <span class="input-footer"> <strong>Info About
											Brand:</strong> Use this area to write brand details..
								</span>
								</label>
							</div>
							<%
								}
							%>
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

	<script src="vendor/plugins/datatables/media/js/datatables.min.js"></script>

	<script
		src="vendor/plugins/datatables/media/js/datatables_addons.min.js"></script>
	<script
		src="vendor/plugins/datatables/media/js/datatables_editor.min.js"></script>



	<script src="assets/js/utility/utility.js"></script>
	<script src="assets/js/demo/demo.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		$(document).ready(function() {
	
			$('#fadeOutFun').fadeOut(5000, 'swing', function() {
				//callback function after animation finished
				$("#fadeOutFun").attr('value', 'fadeOut() is now Complete');
			});
		});
	</script>


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
									brandname : {
										required : true
									},
									comment : {
										required : true,
										minlength : 6
									}
								},
	
								/* @validation error messages 
								---------------------------------------------- */
	
								messages : {
									brandname : {
										required : 'Please Enter username'
									},
									comment : {
										required : 'Oops you forgot to give address',
										minlength : 'Enter at least 5 characters or more'
									}
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
	
	
					$(".select2-single").select2();
	
					// Init Select2 - Contextuals (via html classes)
					$(".select2-primary").select2(); // select2 contextual - primary
					$(".select2-success").select2(); // select2 contextual - success
					$(".select2-info").select2(); // select2 contextual - info
					$(".select2-warning").select2(); /*  // select2 contextual - warning  */
	
				});
	</script>


	<script type="text/javascript">
		jQuery(document).ready(function() {
	
			"use strict";
	
			// Init Theme Core    
			Core.init();
	
			// Init Demo JS  
			Demo.init();
	
			// Init DataTables
			$('#datatable').DataTable({
				// dom: "Bfrtip",
				// dom: "rtip",
				dom : 'rt<"bottom"p>'
			});
	
			$('#datatable3').dataTable({
				dom : '<"top"Bf>rt<"bottom"ip>',
				buttons : [ 'copy', 'excel', 'pdf', 'csv', 'print' ]
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


