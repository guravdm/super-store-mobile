<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="io.hard.util.DoConnection"%>
<%@page import="java.sql.Connection"%>
<div class="sidebar-box listing-box mb-30">
	<span class="opener plus"></span>
	<div class="sidebar-title">
		<h3>Categories</h3>
	</div>
	<div class="sidebar-contant">
		<ul>

			<%
				Connection con = DoConnection.getConnection();
				PreparedStatement ps = con
						.prepareStatement("select * from brand_names");
				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
			%>
			<li><a><i class="fa fa-tablet"></i><%=rs.getString(2)%></a></li>
			<%
				}
			%>


			<li><a>Accessories >></a></li>
		</ul>
	</div>
</div>