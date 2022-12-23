<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New User Registration</title>
</head>
<body>


	<div align="center">
		<h2>New User Registration</h2>
		<form action="/sportyShoes/UserServlet" method="get">
			UserName <br> <input name="userId" type="text"> <br>
			Phone number <br> <input name="userPhno" type="text"> <br>
			Email <br> <input name="userEmail" type="text"> <br>
			Password <br> <input name="password" type="password"> <br>
			Address <br> <input name="userAddress" type="text"> <br>
			<input type="submit" value="Register">
		</form>
	</div>
</body>
</html>