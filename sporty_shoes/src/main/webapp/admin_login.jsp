<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin Login</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<script src="javascripts/storage.js"></script>
<link rel="stylesheet" href="css_files/howeer.css">
<link rel="stylesheet" href="css_files/fun.css">

</head>
<body>
 
	<div class="login">
	<h1 align="center" >Welcome</h1> <br>
		<form action="/sporty_shoes/Alogin_servlet" method="get">
			<div class="form-group">
			<label for="adminid">AdminName</label> <br> 
			<input class="form-control" name="adminid" type="text" required="required"> 
			</div><br>
			<div class="form-group">
			<label for="Apass">Password</label> <br> 
			<input class="form-control" name="Apass" type="password" required="required">
			</div> <br>
			<div align="center">
			<input class="btn btn-primary" type="submit" value="Login">
			</div>
		</form>
	</div>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>