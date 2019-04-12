<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "stylesheet" href="css/bootstrap.css">
<link rel = "stylesheet" href="css/custom.css">
<title>JSP Bulletin Board System</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse"
			  	data-target="#bs-example-navbar-collapse-1"
			  	aria-expanded = "false">
			  	<span class="icon-bar"></span>
			  	<span class="icon-bar"></span>
			  	<span class="icon-bar"></span>
			 </button>
		</div>
		<a class="navbar-brand" href="main.jsp">JSP Bulletin Board System</a>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">Main</a>
				<li><a href="bbs.jsp">Board</a>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown toggle"
					data-toggle="dropdown"
					role="button"
					aria-haspopup="true"
					aria-expanded="false">Account<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">Sign in</a>
						<li><a href="join.jsp">Sign up</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
		<div class="jumbotron" style= "padding-top: 20px;">
			<form method="post" action="loginAction.jsp">
				<h3 style="text-align: center;">Sign in</h3>
				<div class="form-group">
					<input type="text" class="form-control" placeholder="userID"
						name=userID maxlength="20">
				</div>
				<div class="form-group">
					<input type="password" class="form-control" placeholder="userPassword"
						name=userPassword maxlength="20">
				</div>
				<input type="submit" class="btn btn-primary form-control" value="Sign in">
			</form>
		</div>
	</div>
	</div>
	<div class="col-lg-4"></div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>﻿
   	<script src="js/bootstrap.js"></script>
</body>
</html>