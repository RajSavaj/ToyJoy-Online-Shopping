<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Minimal an Admin Panel Category Flat Bootstrap Responsive Website Template | Signin :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery.min.js"> </script>
<script src="js/bootstrap.min.js"> </script>
</head>
<body>
	<div class="login">
		<h1><a href="index.html">Admin </a></h1>
		<div class="login-bottom">
			<form>
			    <asp:Label ID="err" runat="server"></asp:Label>
				 <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="Username" runat="server" autocomplete="off" TextMode="SingleLine" CssClass="form-control"
                            placeholder="Username"></asp:TextBox>
                    </div>
                    				
                    <div class="form-group">
                    <div class="input-group">
                         <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <asp:TextBox ID="Pass" runat="server" autocomplete="off" TextMode="SingleLine" CssClass="form-control"
                            placeholder="Password"></asp:TextBox>
                    </div>

			
			</div>
			<div class="col-md-6 login-do">
				<label class="hvr-shutter-in-horizontal login-sub">
			   
                            
                    <asp:Button runat="server" CssClass="btn btn-block btn-success "
                    ID="btnlogin" Text="Login" onclick="btnlogin_Click" />
                         
					
				
			</div>
			
			<div class="clearfix"> </div>
			</form>
		</div>
	</div>
<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->


    
    </div>
    </form>
</body>
</html>
