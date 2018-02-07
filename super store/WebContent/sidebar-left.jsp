
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="io.hard.util.DoConnection"%>
<%@page import="java.sql.Connection"%>
<%
	if (session.getAttribute("userId") != null) {

		session.setAttribute("page", "sidebar-left");
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
<aside id="sidebar_left" class="nano nano-primary affix">
	<div class="sidebar-widget author-widget">
		<div class="media">
			<a class="media-left" href="#"> <img
				src="assets/img/avatars/3.jpg" class="img-responsive">
			</a>
			<div class="media-body">
				<div class="media-links">
					<a href="#" class="sidebar-menu-toggle"><%=role%> -</a> <a
						href="./LogOut">Logout</a>
				</div>
				<div class="media-author"><%=fName%></div>
			</div>
		</div>
	</div>
	<div class="sidebar-left-content nano-content">

		<header class="sidebar-header">
			<div class="sidebar-widget author-widget hidden">
				<div class="media">
					<a class="media-left" href="#"> <img
						src="assets/img/avatars/3.jpg" class="img-responsive">
					</a>
					<div class="media-body">
						<div class="media-links">
							<a href="#" class="sidebar-menu-toggle">User Menu -</a> <a
								href="./LogOut">Logout</a>
						</div>
						<div class="media-author">Michael Richards</div>
					</div>
				</div>
			</div>
		</header>


		<ul class="nav sidebar-menu">
			<li class="sidebar-label pt20">Menu</li>


			<li class="active"><a href="ad-dashboard.jsp"> <span
					class="glyphicon glyphicon-home"></span> <span
					class="sidebar-title">Dashboard</span>
			</a></li>
			<li><a href="#documentation"> <span
					class="glyphicon glyphicon-book"></span> <span
					class="sidebar-title">Documentation</span>
			</a></li>
			<li class="sidebar-label pt15">Exclusive</li>

			<li><a class="accordion-toggle" href="#"> <span
					class="glyphicon glyphicon-check"></span> <span
					class="sidebar-title">Purchase Order</span> <span class="caret"></span>
			</a>
				<ul class="nav sub-nav">
					<li><a href="#purchase-list"> <span
							class="glyphicon glyphicon-edit"></span> Purchase List
					</a></li>

					<li><a href="#create-purchasejsp"> <span
							class="fa fa-desktop"></span> Create Purchase Order
					</a></li>
				</ul></li>

			<li class="sidebar-label pt20">Vendor</li>
			<li class="sidebar-proj"><a href="vendor-list.jsp"> <span
					class="fa fa-dot-circle-o text-warning"></span> <span
					class="sidebar-title">Vendor Reg</span>
			</a></li>
			<li class="sidebar-label pt20">Master</li>
			<li class="sidebar-proj"><a href="mobile-company-list.jsp">
					<span class="fa fa-dot-circle-o text-primary"></span> <span
					class="sidebar-title">Provider</span>
			</a></li>
			<li class="sidebar-proj"><a href="add-brand-categories.jsp">
					<span class="fa fa-dot-circle-o text-info"></span> <span
					class="sidebar-title">Mobile Categories</span>
			</a></li>
			<!-- <li><a class="accordion-toggle" href="#"> <span
					class="fa fa-diamond"></span> <span class="sidebar-title">Master
						Entries</span> <span class="caret"></span>
			</a>
				<ul class="nav sub-nav">
					<li><a href="mobile-company-list.jsp"> <span
							class="fa fa-cube"></span> Add Brand
					</a></li>
					<li><a href="add-brand-categories.jsp"> <span
							class="fa fa-desktop"></span> Add Categories
					</a></li>
				</ul></li> -->

			<%
				if (role.equalsIgnoreCase("admin")) {
%>
			<li class="sidebar-proj"><a href="employee-list.jsp"> <span
					class="fa fa-dot-circle-o text-danger"></span> <span
					class="sidebar-title">Employee Reg</span>
			</a></li>
			<%
				}
			%>



		</ul>


		<div class="sidebar-toggle-mini">
			<a href="#"> <span class="fa fa-sign-out"></span>
			</a>
		</div>

	</div>

</aside>


<%
	if (con != null) {
			con.close();
		}
	} else {
		response.sendRedirect("login.jsp");
	}
%>