
<%@page import="io.hard.util.DoConnection"%>
<%
	if (session.getAttribute("userId") != null) {

		session.setAttribute("page", "vendor-list");
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
<title>Vendor List</title>

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
				<li class="active"><a href="index.jsp">Dashboard</a></li>
				<li><a href="#">List Item</a></li>
			</ul>
		</div>
		<div class="topbar-right hidden-xs hidden-sm">
			<a href="vendor-list.jsp"
				class="btn btn-default btn-sm light fw600 ml10"> <span
				class="fa fa fa-arrow-left"></span> Refresh
			</a>
		</div>
		</header> <section id="content" class="table-layout animated fadeIn">
		<div class="tray tray-center">
			<div class="row">
				<div class="col-md-12">
					<div class="panel panel-visible" id="spy3">
						<div class="panel-heading">
							<div class="panel-title hidden-xs">
								<span class="glyphicon glyphicon-tasks"></span>Vendor List <span
									style="float: right; margin-right: 20px;"><a
									href="vendor-reg.jsp">New Vendor</a></span>
							</div>
						</div>

						<%
							session.setMaxInactiveInterval(10 * 20);

								if (session.getAttribute("smsg") != null) {
						%>
						<div id="fadeOutFun"
							class="alert alert-micro alert-border-left alert-success alert-dismissable">
							<button type="button" class="close" data-dismiss="alert"
								aria-hidden="true">×</button>
							<i class="fa fa-check pr10"></i> <strong>Well done!</strong> You
							<%=session.getAttribute("smsg")%>
							<!-- <a href="#" class="alert-link">this important alert message</a> -->
							.
						</div>
						<%
							session.removeAttribute("smsg");
								}
						%>

						<div class="panel-body pn">
							<table class="table table-striped table-hover table-bordered"
								id="datatable3" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Vendor ID</th>
										<th>Vendor Name</th>
										<th>Email</th>
										<th>Mobile Number</th>
										<th>GST Number</th>
										<th>Created Date Time</th>
										<th>Edit / Delete</th>
									</tr>
								</thead>
								<tbody>

									<%
										PreparedStatement ps = con
													.prepareStatement("select * from vendor_master");
											ResultSet rs = ps.executeQuery();
											while (rs.next()) {
									%>
									<tr>
										<td><%=rs.getString("vendor_id")%></td>
										<td><%=rs.getString("f_name")%> <%=rs.getString("l_name")%></td>
										<td><%=rs.getString("email")%></td>
										<td><%=rs.getString("mob_no")%></td>
										<td><%=rs.getString("gst_no")%></td>
										<td><%=rs.getString("created_time")%></td>
										<td><a class="fa fa-edit fa-lg" title="Edit"
											href="vendor-edit.jsp?uId=<%=rs.getString("id")%>"><span></span></a>
											<span style="margin-left: 18px;"></span><a
											class="fa fa-trash-o fa-lg" title="Delete"
											onclick="return confirm('Are you sure!?')"
											href="./DeleteVendor?deleteId=<%=rs.getString("id")%>"><span></span></a>
										</td>
										<%
											}
										%>
									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>

		</section> </section>

	</div>


	<jsp:include page="admin-footer-scripts.jsp"></jsp:include>

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


