<%@page import="com.tut.helper"%>
<%@page import="com.entities.Category"%>
<%@page import="com.dao.CategoryDao"%>
<%@page import="com.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDao"%>
<%@page import="com.tut.app"%>

<html>
<head>
<title>GrandMart - Home</title>

<%@include file="Components/Common_CSS_JS.jsp"%>

</head>
<body>
	<%@include file="Components/navbar.jsp"%>


	<div class="container" style="max-width: 90% !important">
		<div class="row mt-3 mx-3">

			<%
				String cat = request.getParameter("category");
				//out.println(cat);

				ProductDao dao = new ProductDao(app.getFactory());
				List<Product> list = null;
				if (cat == null || cat.trim().equals("all")) {
					list = dao.getAllProducts();
				} else {
					int cid = Integer.parseInt(cat.trim());
					list = dao.getAllProductsById(cid);
				}

				CategoryDao cdao = new CategoryDao(app.getFactory());
				List<Category> clist = cdao.getCategories();
			%>

			<!-- show categories -->
			<div class="col-md-2">
				<div class="list-group mt-4">
					<a href="home.jsp?category=all"
						class="list-group-item list-group-item-action active text-center">
						All Categories </a>
					<%
						for (Category category : clist) {
					%>

					<a href="home.jsp?category=<%=category.getCategoryId()%>"
						class="list-group-item list-group-item-action text-center category"><%=category.getCategoryTitle()%></a>
					<%
						}
					%>
				</div>
			</div>

			<!-- show products -->
			<div class="col-md-10 ">

				<!-- row -->
				<div class="row mt-4">

					<!-- col-12 -->
					<div class="col-md-12">


						<div class="card-columns">

							<!-- traversing products -->

							<%
								for (Product p : list) {
							%>
							<div class="card border-success mb-3 product-card"
								style="border-radius: 30px;">
								<div class="container text-center">
									<img class="card-img-top "
										src="img/products/<%=p.getpPhoto()%>"
										style="max-height: 200px; max-width: 100%; width: auto"
										alt="Card image cap">
								</div>

								<div class="card-body">
									<h5 class="card-title"><%=p.getpName()%></h5>
									<p class="card-text">
										<%=helper.get10words(p.getpDesc())%>
									</p>
								</div>
								<div class="card-footer bg-transparent border-success">
									<button class="btn custom-bg text-white"
										onclick="add_to_cart(<%=p.getpId()%>,'<%=p.getpName()%>',<%=p.getPriceAfterDiscount()%>)">Add
										to Cart</button>
									<%
										if (p.getpQuantity() == 0) {
									%>
									<button class="btn btn-outline-success">
										<del>
											&#8377;<%=p.getpPrice()%>/Kg
										</del>
										&nbsp; &#8377;<%=p.getPriceAfterDiscount()%></button>
									&nbsp; <span class="text-secondary discount-label" style="font-size: 15px !important;"><%=p.getpDiscount()%>%
										off</span>
									<%
										} else {
									%>
									<button class="btn btn-outline-success">
										<del>
											&#8377;
											<%=p.getpPrice()%>/Kg
										</del>
										&nbsp; &#8377;<%=p.getPriceAfterDiscount()%>/Kg
									</button>
									&nbsp; <span class="text-secondary discount-label" style="font-size: 15px !important;"><%=p.getpDiscount()%>%
										off</span>
									<%
										}
									%>

								</div>
							</div>
							<%
								}
								if (list.size() == 0) {
							%>
							<h3 class="text-center" style="color: #00897b;">
								<%
									out.println("No items in this category yet!");
									}
								%>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<%@include file="Components/common_modal.jsp"%>
	<%@include file="Components/footer.jsp"%>
</body>
</html>
