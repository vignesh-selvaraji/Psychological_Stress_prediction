﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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

	<style type="text/css">
        .style1
        {
            width: 100%;
            height: 480px;
        }
        .style2
        {
            height: 438px;
        }
        .style3
        {
            width: 510px;
        }
        .style4
        {
            height: 438px;
            width: 510px;
        }
        .style5
        {
            width: 100%;
        }
        .style6
        {
            width: 277px;
        }
        .style9
        {
            height: 40px;
        }
        .style10
        {
            width: 277px;
            height: 40px;
        }
        .style11
        {
            height: 35px;
        }
        .style12
        {
            width: 277px;
            height: 35px;
        }
        .style13
        {
            width: 77px;
        }
        .style14
        {
            height: 40px;
            width: 77px;
        }
        .style15
        {
            height: 35px;
            width: 77px;
        }
    </style>

	</head>
	<body style="background-color:#E1E0E0">
		<form id="form1" runat="server">
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			
			<!-- end:top -->
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						
						<h1 id="fh5co-logo"><a href="#">&nbsp;</a></h1>
						<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li><a href="about.html">Sign up</a></li>						
							<li><a href="contact.html">Log in</a></li>
						</ul>
					</nav>
					</div>
				</div>
			</header>
			
		</div>
		

		<div class="fh5co-heroin">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" style="background-image: url(images/hedr.jpg);">
			</div>

		</div>
		<!-- end:header-top -->
		<div id="fh5co-work-section">
			<div class="container">
			
			    <asp:Panel ID="Panel1" runat="server" Height="481px">
                    <table class="style1">
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                            </td>
                            <td class="style4">
                                <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="416px">
                                    <table class="style5">
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                                    ForeColor="Black" Text="Sign up today."></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style14">
                                                </td>
                                            <td class="style10">
                                                </td>
                                            <td class="style9">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Full name" required Font-Names="Calibri"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                </td>
                                            <td class="style12">
                                                </td>
                                            <td class="style11">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Phone or Email" required 
                                                    Font-Names="Calibri"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                </td>
                                            <td class="style12">
                                                </td>
                                            <td class="style11">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Password" required Font-Names="Calibri" 
                                                    TextMode="Password"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style15">
                                                </td>
                                            <td class="style12">
                                                </td>
                                            <td class="style11">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                                <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Sign up" 
                                                    Width="350px" />
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td class="style6">
                                            
                                                &nbsp;&nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
			
			</div>
		</div>
		<!-- fh5co-work-section -->
		<!-- fh5co-services-section -->
		<!-- fh5co-content-section -->
		<!-- fh5co-blog-section -->
	

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

	</form>

	</body>
</html>