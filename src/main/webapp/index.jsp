<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Bus Booking</title>

<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="resources/css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="resources/css/slick.css" />
<link type="text/css" rel="stylesheet"
	href="resources/css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet"
	href="resources/css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="resources/css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="resources/css/style.css" />



</head>
<body>
	<!-- HEADER -->
	<header>
		<!-- TOP HEADER -->
		<div id="top-header">
			<div class="container">
				<ul class="header-links pull-left">
					<li><a href="#" data-toggle="modal" data-target="#myModal"><i
							class="fa fa-user-o"></i> Admin</a></li>
				</ul>
				<ul class="header-links pull-right">
					<li><a href="#" data-toggle="modal" data-target="#registerModal"><i class="fa fa-user-o"></i> Login</a></li>
					<li><a href="#" data-toggle="modal" data-target="#userModal"><i
							class="fa fa-user-o"></i>New User</a></li>
				</ul>
			</div>
		</div>
		<!-- /TOP HEADER -->

		<!-- MAIN HEADER -->
		<div id="header">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- LOGO -->
					<div class="col-md-3">
						<div class="header-logo">
							<a href="#" class="logo"> <img src="resources/img/logo.png"></a>
						</div>
					</div>
					<!-- /LOGO -->


				<!-- Admin Login -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-sm" role="document">
							<div class="modal-content" style="background-color : Plum">
								<div class="modal-header text-center">
									<h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<form action="validateAdmin" method="post">
								<div class="modal-body mx-3">
								
									<div class="md-form mb-5">
										<i class="fa fa-user-o"></i> Your name
										<input type="text" name="name" class="form-control validate">

									</div>

									<div class="md-form mb-4">
										<i class="fa fa-key"></i> 
										Your password <input type="password" name="password" class="form-control validate">
									</div>

								</div>
								<div class="modal-footer d-flex justify-content-center">
									<input type="submit" class="btn btn-success" value="Login">
								</div>
								</form>
							</div>
							
						</div>
					
					</div>
				<!-- End Admin Login -->
				
				
				
				<!-- New User Registration -->
				<div class="modal fade" id="userModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-sm" role="document">
							<div class="modal-content"  style="background-color : PowderBlue">
								<div class="modal-header text-center">
									<h4 class="modal-title w-100 font-weight-bold">Registration</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
							
								<form action="userRegister" method="post">
								<div class="modal-body mx-3">
								
									<div class="md-form mb-5">
										<i class="fa fa-user"></i> &nbsp;User Name
										<input type="text" name="name" class="form-control validate" maxlength="7" required/>

									</div>
									<br>
									<div class="md-form mb-4">
										<i class="fa fa-lock"></i>&nbsp; Password
									 <input type="password" name="password" class="form-control validate" required/>
									</div>
									<br>
									<div class="md-form mb-4">
										<i class="fa fa-envelope"></i>&nbsp; Email
									 <input type="email" name="email" class="form-control validate" placeholder="test@example.com" required/>
									</div>
									<br>
									<div class="md-form mb-4">
									<i class="fa fa-mobile"></i>&nbsp; Mobile Name
										 <input type="text" name="mnumber" maxlength="10" class="form-control validate" pattern="\d{10}" title="Please enter exactly 10 digits" />			
									</div>
								</div>
								<div class="modal-footer d-flex justify-content-center">
									<input type="submit" class="btn btn-success" value="Register">
								</div>
								</form>
							</div></div>
					</div></div>
					</div>
				</div>
				<!--  End Registeration -->
	</header>
	<!-- /HEADER -->


				<!-- User Login Form -->
			<div class="modal fade"  id="registerModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-sm"  role="document">
							<div class="modal-content" style="background-color : PowderBlue">
								<div class="modal-header text-center">
									<h4 class="modal-title w-100 font-weight-bold" >Log In</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
							
								<form action="validateUser" method="post">
								<div class="modal-body mx-3">
									<div class="md-form mb-5">
										<i class="fa fa-user"></i> &nbsp;User Name
										<input type="text" name="name" class="form-control validate" maxlength="7" required/>
									</div>
									<br>
									<div class="md-form mb-4">
										<i class="fa fa-lock"></i>&nbsp; Password
									 <input type="password" name="password" class="form-control validate" required/>
									</div>
									<br>
								<div class="modal-footer d-flex justify-content-center">
									<input type="submit" class="btn btn-success" value="Register">
								</div>
								</div>
								</form>
							</div></div>
					</div>
				<a href="Book">Book Bus</a><br><br>
		<a href="Bookbuses">Show buses</a><br><br>
	

	<!-- jQuery Plugins -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/nouislider.min.js"></script>
	<script src="resources/js/jquery.zoom.min.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>
