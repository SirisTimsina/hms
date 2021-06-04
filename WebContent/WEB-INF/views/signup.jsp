<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Medilab Signup</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="${pageContext.request.contextPath }/assets/img/favicon.png"
	rel="icon">
<link
	href="${pageContext.request.contextPath }/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link
	href="${pageContext.request.contextPath }/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/icofont/icofont.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/venobox/venobox.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Medilab - v2.1.1
  * Template URL: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Top Bar ======= -->
	<div id="topbar" class="d-none d-lg-flex align-items-center fixed-top">
		<div class="container d-flex">
			<div class="contact-info mr-auto">
				<i class="icofont-envelope"></i> <a
					href="mailto:contact@example.com">contact@example.com</a> <i
					class="icofont-phone"></i> +1 5589 55488 55 <i
					class="icofont-google-map"></i> A108 Adam Street, NY
			</div>
			<div class="social-links">
				<a href="#" class="twitter"><i class="icofont-twitter"></i></a> <a
					href="#" class="facebook"><i class="icofont-facebook"></i></a> <a
					href="#" class="instagram"><i class="icofont-instagram"></i></a> <a
					href="#" class="skype"><i class="icofont-skype"></i></a> <a
					href="#" class="linkedin"><i class="icofont-linkedin"></i></a>
			</div>
		</div>
	</div>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top">
		<div class="container d-flex align-items-center">

			<h1 class="logo mr-auto">
				<a href="home">Medilab</a>
			</h1>
			<!-- Uncomment below if you prefer to use an image logo -->
			<!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a href="home">Home</a></li>
					<li><a href="home#about">About</a></li>
					<li><a href="home#services">Services</a></li>
					<li><a href="home#departments">Departments</a></li>
					<li><a href="home#doctors">Doctors</a></li>
					 <li><a href="signup">Signup</a></li>
					<li class="drop-down"><a href="">Drop Down</a>
						<ul>
							<li><a href="#">Drop Down 1</a></li>
							<li class="drop-down"><a href="#">Deep Drop Down</a>
								<ul>
									<li><a href="#">Deep Drop Down 1</a></li>
									<li><a href="#">Deep Drop Down 2</a></li>
									<li><a href="#">Deep Drop Down 3</a></li>
									<li><a href="#">Deep Drop Down 4</a></li>
									<li><a href="#">Deep Drop Down 5</a></li>
								</ul></li>
							<li><a href="#">Drop Down 2</a></li>
							<li><a href="#">Drop Down 3</a></li>
							<li><a href="#">Drop Down 4</a></li>
						</ul></li>
					<li><a href="home#contact">Contact</a></li>

				</ul>
			</nav>
			<!-- .nav-menu -->

			<a href="#appointment" class="appointment-btn scrollto">Make an
				Appointment</a>

		</div>
	</header>
	<!-- End Header -->


	<main id="main">


		<!-- ======= login Section ======= -->
		<section id="login" class="section-bg">
			<div class="container">

				<div class="section-title">
					<h2>User Registration</h2>
					<p>Signup new user</p>
				</div>

				<form action="${pageContext.request.contextPath }/signup"
					method="post" role="form" enctype="multipart/form-data" >
					<div class="form-row">
						<div class="col-md-6 form-group">
							<input type="text" name="firstname" class="form-control"
								id="fname" placeholder="Your First Name" data-rule="minlen:4"
								data-msg="Please enter at least 2 chars">
							<div class="validate"></div>
						</div>
						<div class="col-md-6 form-group">
							<input type="text" name="lastname" class="form-control"
								id="lname" placeholder="Your Last Name" data-rule="minlen:4"
								data-msg="Please enter at least 2 chars">
							<div class="validate"></div>
						</div>
					</div>
					<div class="form-row">
						<div class="col-md-6 form-group">
							<input type="email" class="form-control" name="email" id="email"
								placeholder="Your Email" data-rule="email"
								data-msg="Please enter a valid email">
							<div class="validate"></div>
						</div>
						<div class="col-md-6 form-group">
							<input type="tel" class="form-control" name="phone" id="phone"
								placeholder="Your Phone" data-rule="minlen:7"
								data-msg="Please enter at least 7 digits">
							<div class="validate"></div>
						</div>
					</div>
					<div class="form-row">
						<div class="col-md-6 form-group">
							<input type="datetime" name="dob"
								class="form-control datepicker" id="date"
								placeholder="Date of Birth" data-rule="minlen:10"
								data-msg="Please enter a valid date">
							<div class="validate"></div>
						</div>
						<div class="col-md-6 form-group">
							<select name="authority" id="authority" class="form-control">
								<option value="">---Select Authority---</option>
								<option value="ADMIN">Administrator</option>
								<option value="USER">User</option>
							</select>
							<div class="validate"></div>
						</div>
					</div>

					<div class="form-group">
						<input type="file" class="form-control" name="image" id="image"
							placeholder="Select your image" />
						<div class="validate"></div>
					</div>

					<div class="form-row">
						<div class="col-md-4 form-group">
							<input type="text" name="username" class="form-control"
								id="username" placeholder="Your Username" data-rule="minlen:6"
								data-msg="Please enter at least 6 chars">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group">
							<input type="password" name="password" class="form-control"
								id="password" placeholder="Your Password" data-rule="minlen:6"
								data-msg="Please enter at least 6 chars">
							<div class="validate"></div>
						</div>
						<div class="col-md-4 form-group">
							<input type="password" name="cpassword" class="form-control"
								id="cpassword" placeholder="Confirm Password"
								data-rule="minlen:6" data-msg="Please enter at least 6 chars">
							<div class="validate"></div>
						</div>
					</div>

					<div class="mb-3">
						<div class="loading">Forgot password?</div>
						<div class="error-message"></div>
						<div class="sent-message">Already signed up.. go to login..</div>
					</div>
					<div class="text-center">
						<button type="submit">Signup</button>
					</div>
				</form>

			</div>
		</section>
		<!-- End signup Section -->
		

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col-lg-3 col-md-6 footer-contact">
						<h3>Medilab</h3>
						<p>
							A108 Adam Street <br> New York, NY 535022<br> United
							States <br>
							<br> <strong>Phone:</strong> +1 5589 55488 55<br> <strong>Email:</strong>
							info@example.com<br>
						</p>
					</div>

					<div class="col-lg-2 col-md-6 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">About
									us</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Terms
									of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy
									policy</a></li>
						</ul>
					</div>

					<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web
									Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product
									Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic
									Design</a></li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-6 footer-newsletter">
						<h4>Join Our Newsletter</h4>
						<p>Tamen quem nulla quae legam multos aute sint culpa legam
							noster magna</p>
						<form action="" method="post">
							<input type="email" name="email"><input type="submit"
								value="Subscribe">
						</form>
					</div>

				</div>
			</div>
		</div>

		<div class="container d-md-flex py-4">

			<div class="mr-md-auto text-center text-md-left">
				<div class="copyright">
					&copy; Copyright <strong><span>Medilab</span></strong>. All Rights
					Reserved
				</div>
				<div class="credits">
					<!-- All the links in the footer should remain intact. -->
					<!-- You can delete the links only if you purchased the pro version. -->
					<!-- Licensing information: https://bootstrapmade.com/license/ -->
					<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/medilab-free-medical-bootstrap-theme/ -->
					Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
				</div>
			</div>
			<div class="social-links text-center text-md-right pt-3 pt-md-0">
				<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a
					href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a
					href="#" class="instagram"><i class="bx bxl-instagram"></i></a> <a
					href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a
					href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<div id="preloader"></div>
	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
	<script
		src="${pageContext.request.contextPath }/assets/vendor/jquery/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/php-email-form/validate.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/venobox/venobox.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/counterup/counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath }/assets/js/main.js"></script>

</body>

</html>