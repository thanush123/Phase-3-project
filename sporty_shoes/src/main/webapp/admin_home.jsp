<%@page import="com.sporty_shoes.databases.User"%>
<%@page import="com.sporty_shoes.databases.Products"%>
<%@page import="com.sporty_shoes.databases.Categories"%>
<%@page import="com.sporty_shoes.dao.UsersDao"%>
<%@page import="com.sporty_shoes.dao.CategoriesDao"%>
<%@page import="com.sporty_shoes.dao.ProductDao"%>
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
<link rel="stylesheet" href="css_files/admin_css.css">
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand">Sporty_Shoes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="admin_home.jsp"><img src="images/home.png"
			alt="Logo" style="width: 40px;"></a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
      <li class="nav-item active ">
          <a class="nav-link active" aria-current="page" href="admin_login.jsp">logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
	
	<%
	ProductDao daop = new ProductDao();
	CategoriesDao daoc = new CategoriesDao();
	UsersDao daou = new UsersDao();
	%>
	<div class="container admin">
		<div class="mt-5 row">
			<div class="col-md-4">
				<div class="card" data-bs-toggle="modal"
					data-bs-target="#showuser_Modal">
					<div class="card-body text-center">
						<div class="container">
							<img alt="users_img" src="images/users.png" width="80px">
						</div>
						<h2>Users</h2>
						Total Users:<%=daou.allUsers().size()%>
					</div>

				</div>
			</div>
			<div class="col-md-4">
				<div class="card" data-bs-toggle="modal"
					data-bs-target="#showcategory_Modal">
					<div class="card-body text-center">
						<div class="container">
							<img alt="categories image" src="images/categories.png"
								class="rounded-circle" width="60px">

						</div>
						<h2>Categories</h2>
						Available Categories:<%=daoc.allCategories().size()%>
					</div>

				</div>
			</div>
			<div class="col-md-4">
				<div class="card" data-bs-toggle="modal"
					data-bs-target="#showproduct_Modal">
					<div class="card-body text-center">
						<div class="container">
							<img alt="products image" src="images/product.png" width="60px">

						</div>
						<h2>Products</h2>
						Available Products:<%=daop.allproducts().size()%>
					</div>

				</div>
			</div>

		</div>
		<div class="mt-5 row">
			<div class="col-md-6">
				<div class="card" data-bs-toggle="modal"
					data-bs-target="#addcategory_Modal">
					<div class="card-body text-center">
						<div class="container">
							<img alt="categories image" src="images/add_category.png "
								class="rounded-circle" width="65px">

						</div>
						<h2>Add Category</h2>
					</div>

				</div>

			</div>
			<div class="col-md-6">

				<div class="card" data-bs-toggle="modal"
					data-bs-target="#addproduct_Modal">
					<div class="card-body text-center">
						<div class="container">
							<img alt="categories image" src="images/add_product.png"
								class="rounded-circle" width="60px">
						</div>
						<h2 style="color: black;">Add Product</h2>
					</div>

				</div>

			</div>

		</div>
	</div>


	<!-- start Modal Categories-->
	<div class="modal fade" id="addcategory_Modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Fill
						Category Details</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div align="center">
						<form id="cadd" action="/sporty_shoes/CategoryServlet" method="get">
							<div >
							<label for="catName" >Category Name</label>
								 <br> <input class="form-control" name="catName" type="text" required="required">

							</div>
							<br>

						</form>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary" form="cadd">Create
						Category</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal Categories-->

	<!-- start Modal product-->
	<div class="modal fade" id="addproduct_Modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">Fill
						Product Details</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
				<div align="center">
						
					<form action="/sporty_shoes/Productservlet" method="post" id="padd">
						<div class="form-group">
						Product Name <br> <input name="pName" type="text">
						</div > <br>
						<div class="form-group">
						Product Price <br> <input name="pPrice" type="text">
						</div><br>
						<div class="form-group">
						
						Product Quantity <br> <input name="pQua" type="text">
						</div>
							  <br> 
							  <div class="form-group">
							  <label for="categories">Choose
							a Category:</label>  <br>
							<select name="categories"> 
							<%
							for (Categories lcs : daoc.allCategories()) {
							%>
							<option value=<%=lcs.getCategoryName()%>><%=lcs.getCategoryName()%></option>
							<%
							}
							%>
						</select>
							  
							  </div>
							  
							   <br> 
						</form>
					</div>
				
				
				
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary" form="padd">Create
						Product</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end Modal product-->
	
	<!-- start show categories-->
	<div class="modal fade" id="showcategory_Modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">All
						Categories</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div align="center">
						<table class="table table-bordered">
						<thead >
						<tr>
						<th>
						Category Id
						</th>
						<th>
						Category Name
						</th>
						</tr>
						</thead>
						<tbody>
						
						<%
						for(Categories ctego:daoc.allCategories()){
							
							%>
							<tr>
							<td><%=ctego.getCategoryId()%></td>
							<td><%=ctego.getCategoryName() %></td>
							
							</tr>
							<%
						}
						
						%>
						
						</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end show categories-->
	
	<!-- start show products-->
	<div class="modal fade" id="showproduct_Modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">All
						Categories</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div align="center">
						<table class="table table-bordered">
						<thead >
						<tr>
						<th>Product Id</th>
						<th>Product Name</th>
						<th>Product Price</th>
						<th>Product Quantity</th>
						</tr>
						</thead>
						<tbody>
						
						<%
						for(Products producto:daop.allproducts()){
							
							%>
							<tr>
							<td><%=producto.getpId()%></td>
							<td><%=producto.getpName()%></td>
							<td><%=producto.getpPrice()%></td>
							<td><%=producto.getpQua()%></td>
							</tr>
							<%
						}
						
						%>
						
						</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- end show Products-->
	
	<!-- start show USERS-->
	<div class="modal fade" id="showuser_Modal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h1 class="modal-title fs-5" id="exampleModalLabel">All
						Categories</h1>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<div align="center">
						<table class="table table-bordered">
						<thead >
						<tr>
						<th>User Id</th>
						<th>User Name</th>
						<th>User PhNo</th>
						<th>User Address</th>
						<th>User Email</th>
						
						</tr>
						</thead>
						<tbody>
						
						<%
						for(User usr:daou.allUsers()){
							
							%>
							<tr>
							<td><%=usr.getUserId()%></td>
							<td><%=usr.getUserName()%></td>
							<td><%=usr.getUserPhno()%></td>
							<td><%=usr.getUserAddress()%></td>
							<td><%=usr.getUserEmail() %></td>
							</tr>
							<%
						}
						
						%>
						
						</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End show USERS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>