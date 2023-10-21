<%
User user = (User) session.getAttribute("current-user");
if (user == null) {
	session.setAttribute("message", "You are not logged in ! Login first to access checkout page");
	response.sendRedirect("Login.jsp");
	return;
} 
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="Components/Common_CSS_JS.jsp"%>
</head>
<body>
	<%@include file="Components/navbar.jsp"%>
	<%@include file="Components/common_modal.jsp"%>

	<div class="container mb-3">
		<div class="row mt-5">
			<div class="col-md-6">
				<div class="card" style="border:1px solid #00897b">

					<div class="card-body custom-bg text-white">
						<h3 class="text-center ">Selected cart items</h3>
					</div>

					<div class="cart-body"></div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="card" style="border:1px solid #00897b">

					<div class="card-header custom-bg text-white ">
						<h3 class="text-center ">Details for order</h3>
					</div>

					<div class="card-body">
						<form>
							<div class="form-group">
								<label for="exampleInputEmail1">Name</label> <input value="<%= user.getUserName() %>" type="text"
									class="form-control" id="name" aria-describedby="emailHelp"
									placeholder="Enter your name">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									value="<%= user.getUserEmail() %>" type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>

							<div class="form-group">
								<label for="exampleFormControlTextarea1">Your address</label>
								<textarea value="<%= user.getUserAddress() %>" class="form-control" id="exampleFormControlTextarea1"
									rows="3" placeholder="Enter your shipping address"></textarea>
							</div>
							
							<div class="container text-center">
							<button class="btn btn-outline-success">Order now</button>
							<button class="btn btn-outline-primary">Continue Shopping</button>
							</div>
							

						</form>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<%@include file="Components/footer.jsp"%>
</body>
</html>