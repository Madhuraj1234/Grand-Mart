<%@page import="java.util.Map"%>
<%@page import="com.tut.helper"%>
<%@page import="com.entities.Category"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.tut.app"%>
<%@page import="com.entities.User"%>
<%
	User user = (User) session.getAttribute("current-user");
	if (user == null) {
		session.setAttribute("message", "You are not logged in ! Login first");
		response.sendRedirect("Login.jsp");
		return;
	} else {
		if (user.getUserType().equals("Normal")) {
			session.setAttribute("message", "You are not admin ! You are not allowed to access this page");
			response.sendRedirect("Login.jsp");
			return;

		}
	}
%>

<!-- Product category -->

<%
	CategoryDao cDao = new CategoryDao(app.getFactory());
	List<Category> list = cDao.getCategories();
	
	Map<String,Long> m = helper.getCount(app.getFactory());
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Panel</title>
<%@include file="Components/Common_CSS_JS.jsp"%>
</head>
<body>
	<%@include file="Components/navbar.jsp"%>

	<div class="container admin mb-3">

		<div class="container-fluid mt-3">
			<%@include file="Components/message.jsp"%>
		</div>

		<h1 class="text-center" style="font-size: 55px">
			<span class="text-bg">Admin</span> Panel
		</h1>

		<!-- First Row -->
		<div class="row mt-3">

			<!-- First column -->
			<div class="col-md-4">

				<div class="card">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle"
							src="img/user.png">
						<h1><%= m.get("userCount") %></h1>
						<h1 class="text-uppercse text-muted">Users</h1>
					</div>
				</div>

			</div>

			<!-- Second column -->
			<div class="col-md-4">

				<div class="card">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle"
							src="img/categories.png">
						<h1><%= list.size() %></h1>
						<h1 class="text-uppercse text-muted">Category</h1>
					</div>
				</div>

			</div>

			<!-- Third column -->
			<div class="col-md-4">

				<div class="card">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle"
							src="img/delivery-box.png">
						<h1><%= m.get("productCount") %></h1>
						<h1 class="text-uppercse text-muted">Products</h1>
					</div>
				</div>

			</div>

		</div>

		<!-- second row -->
		<div class="row mt-3">

			<!-- First column -->
			<div class="col-md-6">

				<div class="card" data-toggle="modal"
					data-target="#add-category-modal">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle"
							src="img/add category.png">
						<p class="mt-3">Click here to add new category</p>
						<h1 class="text-uppercse text-muted">Add Category</h1>
					</div>
				</div>

			</div>

			<!-- First column -->
			<div class="col-md-6">

				<div class="card" data-toggle="modal"
					data-target="#add-product-modal">
					<div class="card-body text-center">
						<img style="max-width: 150px;" class="img-fluid rounded-circle"
							src="img/plus.png">
						<p class="mt-3">Click here to add new Product</p>
						<h1 class="text-uppercse text-muted">Add Product</h1>
					</div>
				</div>

			</div>

		</div>

	</div>

	<!-- Add category modal -->


	<!-- Modal -->
	<div class="modal fade" id="add-category-modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header text-white"
					style="background-color: #00897b;">
					<h5 class="modal-title" id="exampleModalLongTitle">Add
						Category Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="ProductOperationServlet" method="post">

						<input type="hidden" name="operation" value="addcategory">

						<div class="form-group">
							<input type="text" class="form-control" name="catTitle"
								placeholder="Enter category title" required />
						</div>

						<div class="form-group">
							<textarea style="height: 200px;" class="form-control"
								name="catDescription" placeholder="Enter category description"
								required></textarea>
						</div>

						<div class="container text-center">
							<button class="btn btn-outline-success">Add Category</button>

						</div>

					</form>

				</div>
				<div class="modal-footer">
					<button style="background-color: #00897b;" type="button"
						class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- End category modal -->


	<!-- Add Product modal -->

	<div class="modal fade" id="add-product-modal" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLongTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-lg modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header text-white"
					style="background-color: #00897b;">
					<h5 class="modal-title" id="exampleModalLongTitle">Add Product
						Details</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="ProductOperationServlet" method="post"
						enctype="multipart/form-data">

						<input type="hidden" name="operation" value="addproduct">

						<div class="form-group">
							<input type="text" class="form-control" name="proName"
								placeholder="Enter product name" required />
						</div>

						<div class="form-group">
							<textarea style="height: 200px;" class="form-control"
								name="proDescription" placeholder="Enter product description"
								required></textarea>
						</div>



						<div class="form-row mb-2">
							<div class="col">
								<input type="text" class="form-control" name="proPrice"
									placeholder="Enter product price">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="proDiscount"
									placeholder="Enter product discount">
							</div>
							<div class="col">
								<input type="text" class="form-control" name="proQuantity"
									placeholder="Enter product quantity in Kg">
							</div>
						</div>



						<div class="form-group">
							<select name="catId" class="form-control" id=" ">

								<%
									for (Category c : list) {
								%>
								<option value="<%=c.getCategoryId()%>">
									<%=c.getCategoryTitle()%>
								</option>
								<%
									}
								%>

							</select>
						</div>

						<div class="input-group mb-3">
							<div class="custom-file">
								<p class="text-muted">Select picture of product
								<p>
									&nbsp; &nbsp; &nbsp; &nbsp; <input class="text-muted"
										type="file" id="myFile" name="proPic">
							</div>

						</div>

						<div class="container text-center">
							<button class="btn btn-outline-success">Add Products</button>

						</div>
					</form>

				</div>
				<div class="modal-footer">
					<button style="background-color: #00897b;" type="button"
						class="btn btn-secondary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>



	<!-- End Product modal -->

	<%@include file="Components/footer.jsp"%>
</body>
</html>