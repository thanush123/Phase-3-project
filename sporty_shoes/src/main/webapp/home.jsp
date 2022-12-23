<%@page import="com.sporty_shoes.databases.Products"%>
<%@page import="com.sporty_shoes.dao.ProductDao"%>
<%@page import="com.sporty_shoes.databases.Categories"%>
<%@page import="com.sporty_shoes.dao.CategoriesDao"%>
<%@page import="java.util.ArrayList"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sporty Shoes Home</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
<script src="javascripts/storage.js"></script>
<link rel="stylesheet" href="css_files/howeer.css">
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
						aria-current="page" onclick="oorike('<%=request.getAttribute("user_name")%>')"><img
							src="images/home.png" alt="Logo" style="width: 40px;"></a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active cart"><a class="nav-link active"
						aria-current="page" data-bs-toggle="modal" data-bs-target="#orderModal">Orders  </a></li>
					<li class="nav-item active cart"><a class="nav-link active"
						aria-current="page" data-bs-toggle="modal" data-bs-target="#cartModal">cart<span class="funny">( 0 )</span></a></li>
					
					<li class="nav-item active "><a class="nav-link active"
						aria-current="page" href="index.jsp">logout</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!--end nav bar  -->

	<div class="row mt-2 mx-2">

		<div class="col-md-2">

			<div class="list-group mt-4">
				<a href="home.jsp?cate=all"
					class="list-group-item list-group-item-action active"
					aria-current="true"> All products </a>
				<%
				CategoriesDao cdao = new CategoriesDao();
				String ca = request.getParameter("cate");

				List<Categories> lCat = cdao.allCategories();
				for (Categories lc : lCat) {
				%>

				<div class="can">
					<a href="home.jsp?cate=<%=lc.getCategoryId()%>"
						class="list-group-item list-group-item-action"><%=lc.getCategoryName()%></a>

				</div>


				<%
}
%>
			</div>



		</div>

		<div class="col-md-9 mt-4">

			<div class="row">
				<%
				ProductDao pdao = new ProductDao();
				List<Products> lproducts = new ArrayList<>();

				try {
					if (ca.trim().equals("all")) {
						lproducts = pdao.allproducts();
					} else {
						lproducts = pdao.allproductscat(Integer.parseInt(ca.trim()));
					}
				} catch (Exception e) {
					lproducts = pdao.allproducts();
				}
				%>

				<%
				for (Products pls : lproducts) {
				%>
				<div class="col-md-3 mb-4 colhover">
					<div class="card">
						<img src="images/<%=pls.getpId()%>.png" class="card-img-top"
							alt="..." style="height: 200px">
						<div class="card-body">
							<h5 class="card-title"><%=pls.getpName()%></h5>
							<p class="card-text">Some quick example text to build on the
								card title and make up the bulk of the card's content.</p>
							<a  onclick="add_to_cart('<%=request.getAttribute("user_name") %>','<%=pls.getpId() %>','<%=pls.getpName()%>',1,<%=pls.getpPrice() %>)" class="btn btn-success">Add to cart</a>
							<button class="btn btn-outline-primary">₹<%=pls.getpPrice()%></button>
						</div>
					</div>
				</div>
				<%
				}
				%>


			</div>

		</div>
	</div>
<div class="modal fade" id="cartModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header" style="background: #5D3FD3">
					<h1 class="modal-title fs-5" id="exampleModalLabel" style="color: white;">Cart</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<div class="cart-body cart_body"></div>
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
						
						<form action="/sporty_shoes/Forw" id="impform">
						<input type="hidden" name="user_name" value="<%=request.getAttribute("user_name")%>">
						<input type="submit" class="btn btn-primary checkout-btn" value="proceed to buy">
						</form>
					
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="orderModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header" style="background: #5D3FD3">
					<h1 class="modal-title fs-5" id="exampleModalLabel" style="color: white;">Your Orders</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				<div class="cart-body"></div>
				<div class="userorders">
				
				
				</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>