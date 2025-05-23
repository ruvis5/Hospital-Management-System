﻿<!DOCTYPE html>
<% response.setHeader("cache-control","no-cache,no-store,must-revalidate"); String
	emaill=(String)session.getAttribute("email"); String role=(String)session.getAttribute("role"); if(emaill!=null &&
	role!=null & role.equals("admin")) response.sendRedirect("admin.jsp"); else if(emaill!=null && role!=null &
	role.equals("patient")) response.sendRedirect("pateint_page.jsp"); %>
	<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="images/logonew7.png" rel="icon"/>
		<title>MediCare Hospital Center</title>
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/style.css" rel="stylesheet">
		<script src="js/jquery.js"></script>

	</head>

	<body style="background: linear-gradient(to right, #41b6e6, #ffff);">

		<div class="container-fluid">
			<!--- Header --------------------------->
			<div class="row navbar-fixed-top">
				<nav class="navbar navbar-default header">
					<div class="container-fluid">
						<div class="navbar-header">
							<a class="navbar-brand logo" href="#">
								<img alt="Brand" src="images/logonew7.png">
							</a>
							<div class="navbar-text title">
								<p>MediCare Hospital Center</p>
							</div>
						</div>
					</div>
				</nav>
			</div>
			<!--- Header Ends Here --------------------------->

			<div class="row">

				<div style="margin-top: 100px;" class="col-md-12">
					<jsp:include page="aboutus.jsp" />
				</div>

			</div>

			<div class="row bgimage">
				<div style="margin-top: 50px;" class="col-md-12">
					<div class="panel panel-default login">
						<div class="panel-heading logintitle">Login</div>

						<div class="panel-body">
							<form class="form-horizontal center-block" role="form" action="login_validation.jsp"
								method="post">

								<div class="input-group input-group-lg">
									<span class="input-group-addon" id="sizing-addon1"><span
											class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
									<select class="form-control" name="userrole">
										<option selected="selected">Select User</option>
										<option value="admin">Admin</option>
										<option value="patient">Patient</option>

									</select>
								</div>
								<br />
								<div>

								</div>
								<div class="input-group input-group-lg">
									<span class="input-group-addon" id="sizing-addon1"><span
											class="glyphicon glyphicon-envelope" aria-hidden="true"></span></span>
									<input type="email" class="form-control" name="email"
										placeholder="example@gmail.com" required aria-describedby="sizing-addon1">
								</div>

								<br />
								<div class="input-group input-group-lg">
									<span class="input-group-addon" id="sizing-addon1"><span
											class="glyphicon glyphicon-lock" aria-hidden="true"></span></span>
									<input type="password" name="password" class="form-control" placeholder="Password"
										required aria-describedby="sizing-addon1">
								</div>
								<br />
								<div class="col-sm-7 col-sm-offset-2">
									<button type="submit" class="btn btn-primary btn-block btn-lg" style="background-color: #92c86d">Login</button>
								</div>
							</form>
						</div>
						<a href="register_patient.jsp"
							style="text-align:Center;font-weight:bold;font-size:120%;padding: 0 2%">Register As
							Patient</a>
					</div>

				</div>

			</div>



			<div class="row" style="margin-top: 50px;">

				<div class="content">
					<jsp:include page="expandableq.jsp" />
				</div>

			</div>

			<div class="row">

				<div style="margin-top: 50px;">
					<!--- Footer --------------------------->
					<footer>
						<jsp:include page="footer.jsp" />
					</footer>
					<!--- Footer Ends Here --------------------------->
				</div>
			</div>

		</div>


		</div>

		<script src="js/bootstrap.min.js"></script>

	</body>

	</html>