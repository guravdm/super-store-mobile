<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="io.hard.util.DoConnection"%>
<%@page import="java.sql.Connection"%>
<%
	if (session.getAttribute("userId") != null) {

		session.setAttribute("page", "index");
		session.setMaxInactiveInterval(10 * 60);
%>
<%
	if (session.getAttribute("userId") == null)
			response.sendRedirect("login.jsp");
		response.setHeader("Cache-Control",
				"no-cache, no-store, must-revalidate");
		response.setHeader("Expires", "0");
		response.setHeader("Pragma", "no-cache");
		String loginId = session.getAttribute("userId").toString();

		Connection con = DoConnection.getConnection();
		String fName = "", role = "";
		PreparedStatement p = con
				.prepareStatement("select * from employee_master where username = ? ");
		p.setString(1, loginId);
		ResultSet r = p.executeQuery();
		while (r.next()) {
			fName = r.getString("name");
			role = r.getString("role");
		}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
<jsp:include page="admin-header-scripts.jsp"></jsp:include>
</head>
<body class="dashboard-page sb-l-o sb-r-c">


	<jsp:include page="theme-options.jsp"></jsp:include>


	<div id="main">
		<jsp:include page="topbar-admin.jsp"></jsp:include>
		<jsp:include page="sidebar-left.jsp"></jsp:include>

		<section id="content_wrapper">
			<header id="topbar">
				<div class="topbar-left">
					<ol class="breadcrumb">
						<li class="crumb-active"><a href="index.jsp">Dashboard</a></li>
					</ol>
				</div>
			</header>
			<section id="content" class="animated fadeIn">
				<%
					if (session.getAttribute("alert") != null) {
				%>
				<div id="fadeOutFun"
					class="alert alert-micro alert-border-left alert-danger alert-dismissable">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">×</button>
					<i class="fa fa-check pr10"></i> <strong> <%=session.getAttribute("alert")%>!
					</strong>
				</div>
				<%
					session.removeAttribute("alert");
						}

						if (role.equalsIgnoreCase("admin")) {
				%>
				<jsp:include page="admin-dashboard.jsp"></jsp:include>
				<%
					}
				%>

				<%
					if (role.equalsIgnoreCase("Shop Keeper")) {
				%>
				<jsp:include page="user-dashboard.jsp"></jsp:include>
				<%
					}
				%>
			</section>

		</section>
	</div>

	<jsp:include page="admin-footer-scripts.jsp"></jsp:include><script
		type="text/javascript">
		jQuery(document).ready(function() {
	
			"use strict";
	
			// Init Theme Core      
			Core.init();
	
			// Init Demo JS
			Demo.init();
	
			// Init Widget Demo JS
			// demoHighCharts.init();
	
			// Because we are using Admin Panels we use the OnFinish 
			// callback to activate the demoWidgets. It's smoother if
			// we let the panels be moved and organized before 
			// filling them with content from various plugins
	
			// Init plugins used on this page
			// HighCharts, JvectorMap, Admin Panels
	
			// Init Admin Panels on widgets inside the ".admin-panels" container
			$('.admin-panels').adminpanel({
				grid : '.admin-grid',
				draggable : true,
				preserveGrid : true,
				mobile : false,
				onStart : function() {
					// Do something before AdminPanels runs
				},
				onFinish : function() {
					$('.admin-panels').addClass('animated fadeIn').removeClass('fade-onload');
	
					// Init the rest of the plugins now that the panels
					// have had a chance to be moved and organized.
					// It's less taxing to organize empty panels
					setTimeout(function() {
						runVectorMaps(); // function below
						demoHighCharts.init();
					}, 300)
	
				},
				onSave : function() {
					$(window).trigger('resize');
				}
			});
	
			// Widget VectorMap
			function runVectorMaps() {
	
				// Jvector Map Plugin
				var runJvectorMap = function() {
					// Data set
					var mapData = [ 900, 700, 350, 500 ];
					// Init Jvector Map
					$('#WidgetMap').vectorMap({
						map : 'us_lcc_en',
						//regionsSelectable: true,
						backgroundColor : 'transparent',
						series : {
							markers : [ {
								attribute : 'r',
								scale : [ 3, 7 ],
								values : mapData
							} ]
						},
						regionStyle : {
							initial : {
								fill : '#E5E5E5'
							},
							hover : {
								"fill-opacity" : 0.3
							}
						},
						markers : [ {
							latLng : [ 37.78, -122.41 ],
							name : 'San Francisco,CA'
						}, {
							latLng : [ 36.73, -103.98 ],
							name : 'Texas,TX'
						}, {
							latLng : [ 38.62, -90.19 ],
							name : 'St. Louis,MO'
						}, {
							latLng : [ 40.67, -73.94 ],
							name : 'New York City,NY'
						} ],
						markerStyle : {
							initial : {
								fill : '#a288d5',
								stroke : '#b49ae0',
								"fill-opacity" : 1,
								"stroke-width" : 10,
								"stroke-opacity" : 0.3,
								r : 3
							},
							hover : {
								stroke : 'black',
								"stroke-width" : 2
							},
							selected : {
								fill : 'blue'
							},
							selectedHover : {}
						},
					});
					// Manual code to alter the Vector map plugin to 
					// allow for individual coloring of countries
					var states = [ 'US-CA', 'US-TX', 'US-MO',
						'US-NY'
					];
					var colors = [ bgWarningLr, bgPrimaryLr, bgInfoLr, bgAlertLr ];
					var colors2 = [ bgWarning, bgPrimary, bgInfo, bgAlert ];
					$.each(states, function(i, e) {
						$("#WidgetMap path[data-code=" + e + "]").css({
							fill : colors[i]
						});
					});
					$('#WidgetMap').find('.jvectormap-marker')
						.each(function(i, e) {
							$(e).css({
								fill : colors2[i],
								stroke : colors2[i]
							});
						});
				}
	
				if ($('#WidgetMap').length) {
					runJvectorMap();
				}
			}
	
		});
	</script>

	<script>
		$(document).ready(function() {
			$('#fadeOutFun').fadeOut(20900, 'swing', function() {
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