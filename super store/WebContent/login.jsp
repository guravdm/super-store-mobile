<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en-us">

<!-- Mirrored from zawiastudio.com/dashboard/demo/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 11 Dec 2017 13:18:24 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Log in | Dashboard</title>
<meta name="description" content="Dashboard UI Kit">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600"
	rel="stylesheet">

<link rel="stylesheet" href="admin/css/main.minffaf.css?v=1.4">
</head>
<body class="c-login-wrapper">
	<div class="c-login">
		<header class="c-login__head">
			<a class="c-login__brand" href="#!"> <img
				src="admin/img/logo-login.svg" alt="Dashboard's Logo">
			</a>
			<h1 class="c-login__title">Welcome back! Please login.</h1>
			<%
				if (session.getAttribute("smsg") != null) {
			%>
			<div id="fadeOutFun"
				class="alert alert-micro alert-border-left alert-danger alert-dismissable">
				<button type="button" class="close" data-dismiss="alert"
					aria-hidden="true">×</button>
				<i class="fa fa-check pr10"></i> <strong><%=session.getAttribute("smsg")%>
				</strong>
			</div>
			<%
				session.removeAttribute("smsg");
				}
			%>
		</header>

		<form action="login" method="post" class="c-login__content">
			<div class="c-field u-mb-small">
				<label class="c-field__label" for="input1">Sign in with your
					e-mail address</label> <input class="c-input" type="text" id="username"
					required="required" name="username" placeholder="admin@gmail.com">
			</div>

			<div class="c-field u-mb-small">
				<label class="c-field__label" for="input2">Password</label> <input
					required="required" class="c-input" type="password" id="password"
					name="password" placeholder="Numbers, Letters...">
			</div>

			<button class="c-btn c-btn--info c-btn--fullwidth" type="submit">Sign
				in</button>

		</form>

		<footer class="c-login__footer">
			<a class="c-login__footer-link u-left" href="#!">Don't have an
				account yet? Get Started</a> <a class="c-login__footer-link u-right"
				href="#!">Forgot Password?</a>
		</footer>
	</div>

	<script src="vendor/jquery/jquery-3.1.1.min.js"></script>
	<script src="vendor/jquery/jquery_migrate/jquery-migrate-3.0.0.min.js"></script>
	<script src="vendor/jquery/jquery_ui/jquery-ui.min.js"></script>

	<script src="admin/js/main.minffaf.js?v=1.4"></script>
	<script>
		$(document).ready(function() {
	
			$('#fadeOutFun').fadeOut(3500, 'swing', function() {
				//callback function after animation finished
				$("#fadeOutFun").attr('value', 'fadeOut() is now Complete');
			});
		});
	</script>
</body>
</html>