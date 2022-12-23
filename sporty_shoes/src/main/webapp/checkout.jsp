<%@page import="com.sporty_shoes.databases.User"%>
<%@page import="java.util.List"%>
<%@page import="com.sporty_shoes.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>checkout demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<script src="javascripts/storage.js"></script>
</head>
<body>


<%UsersDao usrdao=new UsersDao();
String sdf=request.getParameter("user_name");
List<User> oobjs=usrdao.requiresUser(sdf);
%>
<!--Start nav bar  -->
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
		<div class="container-fluid">
			<a class="navbar-brand">Sporty_Shoes</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a onclick="updateCart('<%=request.getAttribute("user_name")%>')" class="nav-link active"
						aria-current="page"><img
							src="images/home.png" alt="Logo" style="width: 40px;"></a></li>
							
							
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active "><a class="nav-link active"
						aria-current="page" href="index.jsp">logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--end nav bar  -->

	<div class="container">

		<div class="row mt-5">
			<div class="col-md-6">

				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Items in your cart</h3>
						<div class="cart-body cart_body"></div>

					</div>

				</div>

			</div>
			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Your Details</h3>
						<div class="user_details"></div>


						<form action="payment_gateway.jsp">
							<div class="mb-3">
								<label for="exampleInputName" class="form-label">Name</label>
								<input type="text" class="form-control" id="exampleInputName" value="<%= oobjs.get(0).getUserName()%>">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email address</label> 
								<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%= oobjs.get(0).getUserEmail()%>">
							</div>
							<div class="mb-3">
								<label for="exampleInputphno" class="form-label">Phone Number</label> 
								<input type="text" class="form-control" id="exampleInputphno" aria-describedby="emailHelp" value="<%= oobjs.get(0).getUserPhno()%>">
							</div>
							<div class="mb-3">
							 	<label for="floatingTextarea2">Address</label>
								 <input type="text" class="form-control" id="floatingTextarea2" style="height: 100px" value="<%= oobjs.get(0).getUserAddress()%>">
							</div>
							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" id="exampleCheck1"> 
								<label class="form-check-label" for="exampleCheck1">Agree to Terms & Conditions</label>
							</div>
							<button type="submit" class="btn btn-primary" onclick="orderbox('<%=request.getAttribute("user_name")%>')">Proceed for payment</button>
						</form>
						
					</div>

				</div>

			</div>

		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>