

<%@page import="io.hard.util.DoConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
	if (session.getAttribute("userId") != null) {

		session.setAttribute("page", "topbar");
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


<header class="navbar navbar-fixed-top">
	<div class="navbar-branding">
		<a class="navbar-brand" href="dashboard.html"> <b>Project</b>Designs
		</a> <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
	</div>
	<ul class="nav navbar-nav navbar-left">
		<li class="hidden-xs"><a class="request-fullscreen toggle-active"
			href="#"> <span class="ad ad-screen-full fs18"></span>
		</a></li>
		<li><a class=""> <span class="typetext"></span>
		</a></li>
	</ul>

	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown"><a class="dropdown-toggle"
			data-toggle="dropdown" href="#"> <span
				class="ad ad-radio-tower fs18"></span>
		</a>
			<ul
				class="dropdown-menu media-list w350 animated animated-shorter fadeIn"
				role="menu">
				<li class="dropdown-header"><span class="dropdown-title">
						Notifications</span> <span class="label label-warning">12</span></li>
				<li class="media"><a class="media-left" href="#"> <img
						src="assets/img/avatars/5.jpg" class="mw40" alt="avatar">
				</a>
					<div class="media-body">
						<h5 class="media-heading">
							Article <small class="text-muted">- 08/16/22</small>
						</h5>
						Last Updated 36 days ago by <a class="text-system" href="#">
							Max </a>
					</div></li>
			</ul></li>
		<li class="menu-divider hidden-xs"><i class="fa fa-circle"></i></li>
		<li class="dropdown"><a href="#"
			class="dropdown-toggle fw600 p15" data-toggle="dropdown"> <img
				src="assets/img/avatars/1.jpg" alt="avatar" class="mw30 br64 mr15">
				<%=fName%><span class="caret caret-tp hidden-xs"></span>
		</a>
			<ul class="dropdown-menu list-group dropdown-persist w250"
				role="menu">

				<li class="list-group-item"><a href="#"
					class="animated animated-short fadeInUp"> <span
						class="fa fa-gear"></span> Account Settings
				</a></li>

				<li class="dropdown-footer"><a href="./LogOut" class=""> <span
						class="fa fa-power-off pr5"></span> Logout
				</a></li>
			</ul></li>
	</ul>
</header>

<%
	} else {
		response.sendRedirect("login.jsp");
	}
%>