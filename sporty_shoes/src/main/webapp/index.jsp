<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Admin home</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>

<link rel="stylesheet" href="css_files/fun.css">
</head>
<body>

	<div class="login">
		<h2 align="center">Sporty_Shoes</h2>

		<form action="/sporty_shoes/Ulogin_servlet" method="get">
			<div class="form-group">
				<label for="userid">User Name</label> <br> <input
					class="form-control" name="userid" type="text" required="required">
			</div>
			<br>
			<div class="form-group">
				<label for="Upass">Password</label> <br> <input
					class="form-control" name="Upass" type="password"
					required="required">
			</div>
			<br>
			<div align="center">
				<input class="btn btn-primary" type="submit" value="Login">
			</div>
		</form>
		<div align="center">
			New User?<a href="#" data-bs-toggle="modal"
				data-bs-target="#exampleModal">click here</a> <br> Admin?<a
				href="admin_login.jsp">Click here</a>
		</div>

	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">New User
						Registration form</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div align="center">

						<form action="/sporty_shoes/UserServlet" method="get" id="rform">
							UserName <br> <input name="userId" type="text"> <br>
							Phone number <br> <input name="userPhno" type="text">
							<br> Email <br> <input name="userEmail" type="text">
							<br> Password <br> <input name="password"
								type="password"> <br> Address <br> <input
								name="userAddress" type="text"> <br>
						</form>

					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" form="rform" class="btn btn-primary">Register</button>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>