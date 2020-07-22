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
					<li>
					<a href="#" data-toggle="modal" data-target="#logoutModal"><i class="fa fa-sign-out"></i>
					 Admin</a></li>
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


					<!-- ACCOUNT -->
					<div class="col-md-3 clearfix">
						<div class="header-ctn">

						</div>
					</div>
					<!-- /ACCOUNT -->
				</div>
				<!-- row -->
			</div>
			<!-- container -->
		</div>
		<!-- /MAIN HEADER -->
	</header>
	<!-- /HEADER -->
	
	
<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">Dashboard</a></li>
						<li><a href="showAllTv">TV</a></li>
						<li><a href="showAllLaptop">Laptops</a></li>
						<li><a href="showAllSmartphone">SmartPhones</a></li>
						<li><a href="showAllCamera">Cameras</a></li>
						<li><a href="showAllHeadPhone">HeadPhones</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
		</div>
		<!-- /SECTION -->

	


	
	<!-- Logout Admin -->
	<div class="modal" id="logoutModal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
        <h4>Log Out <i class="fa fa-lock"></i></h4>
      </div>
      <div class="modal-body">
        <p><i class="fa fa-question-circle"></i> Are you sure you want to log-off? <br /></p>
        <div class="actionsBtns">
            <form action="logout" method="post">
                <input type="submit" class="btn btn-default btn-primary" data-dismiss="modal" value="Logout" />
	                <button class="btn btn-default" data-dismiss="modal">Cancel</button>
            </form>
        </div>
      </div>
    </div>
  </div>
</div>
	
	
	<!-- End Logout -->


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
