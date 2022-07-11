<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Social Interactions</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="css/superfish.css">

	<link rel="stylesheet" href="css/style.css">


	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			
			<!-- end:top -->
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						
						<h1 id="fh5co-logo"><a href="#">Detecting Stress Based on Social Interactions in Social Networks</a></h1>
						<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a href="Home.aspx">Home</a></li>						
							<li><a href="AdminLogin.aspx">Admin</a></li>
							<li><a href="Sign up.aspx">Sign up</a></li>						
							<li><a href="Login.aspx">Log in</a></li>
						</ul>
					</nav>
					</div>
				</div>
			</header>
			
		</div>
		

		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" style="background-image: url(images/twitter.jpg);">
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-work-section">
			<div class="container">
			<h3>Abstract</h3>
			<p style="text-align: justify">Psychological stress is threatening people’s health. It is non-trivial to detect stress timely for proactive care. With the
popularity of social media, people are used to sharing their daily activities and interacting with friends on social media platforms,
making it feasible to leverage online social network data for stress detection. In this paper, we find that users stress state is closely
related to that of his/her friends in social media, and we employ a large-scale dataset from real-world social platforms to systematically
study the correlation of users’ stress states and social interactions. We first define a set of stress-related textual, visual, and social
attributes from various aspects, and then propose a novel hybrid model - a factor graph model combined with Convolutional Neural
Network to leverage tweet content and social interaction information for stress detection. Experimental results show that the proposed
model can improve the detection performance by 6-9% in F1-score. By further analyzing the social interaction data, we also discover
several intriguing phenomena, i.e. the number of social structures of sparse connections (i.e. with no delta connections) of stressed
users is around 14% higher than that of non-stressed users, indicating that the social structure of stressed users’ friends tend to be
less connected and less complicated than that of non-stressed users.</p>
			</div>
		</div>
		<!-- fh5co-work-section -->
		<!-- fh5co-services-section -->
		<!-- fh5co-content-section -->
		<!-- fh5co-blog-section -->
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p></p>
						</div>
						<div class="col-md-6">
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="js/main.js"></script>

	</body>
</html>