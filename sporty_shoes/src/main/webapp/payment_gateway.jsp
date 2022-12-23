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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.jsp"><img
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
	<div class="col-md-3"></div>
	<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Card Details</h3>
						<div class="user_details"></div>


						<form action="">
							<div class="mb-3">
								<label for="CardNumber" class="form-label">Card Number</label>
								<input type="text" class="form-control" id="CardNumber">
							</div>
							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Name on Card</label> 
								<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputphno" class="form-label">Expiration date</label> 
								<input type="date" class="form-control" id="exampleInputphno" aria-describedby="emailHelp">
							</div>
							<div class="mb-3">
								<label for="exampleInputphno" class="form-label">CVV</label> 
								<input type="text" class="form-control" id="exampleInputphno" aria-describedby="emailHelp">
							</div>
							<div align="center">
							<button  type="submit" class="btn btn-primary">Submit</button>
							</div>
						</form>
						
					</div>

				</div>

			</div>
			<div class="col-md-3"></div>
			</div>
			</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>