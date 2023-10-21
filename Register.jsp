<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New User</title>
<%@include file="Components/Common_CSS_JS.jsp"%>
</head>
<body>
	<%@include file="Components/navbar.jsp"%>
	<div class="container-fluid mb-3">
		<div class="row mt-4">
			<div class="col-md-4 offset-md-4">
				<%@include file="Components/message.jsp"%>
				<div class="card" style="border-color:#00897b;">
				
				<div class="card-header card text-white" style="background-color:#00897b;"><div class="container text-center">
							
						</div>
						<h3 class="text-center my-3">Create your Account</h3></div>

					<div class="card-body px-4">
						


						<form action="RegisterServlet" method="post">
							<div class="form-group">
								<label for="name">User Name</label> <input name="user_name"
									type="text" class="form-control" id="name"
									aria-describedby="emailHelp" placeholder="Enter here">
							</div>
							<div class="form-group">
								<label for="email">User Email</label> <input name="user_email"
									type="email" class="form-control" id="email"
									aria-describedby="emailHelp" placeholder="Enter here">
							</div>
							<div class="form-group">
								<label for="password">User Password</label> <input
									name="user_password" type="password" class="form-control"
									id="password" aria-describedby="emailHelp"
									placeholder="Enter here">
							</div>
							<div class="form-group">
								<label for="phone">User Phone </label> <input name="user_phone"
									type="phone" class="form-control" id="phone"
									aria-describedby="emailHelp" placeholder="Enter here">
							</div>
							<div class="form-group">
								<label for="address">User Address</label>
								<textarea name="user_address" style="height: 150px;"
									class="form-control" placeholder="Enter your address here"></textarea>
							</div>

							<div class="container text-center">
								<button class="btn btn-outline-success">Register</button>
								<button class="btn btn-outline-warning">Reset</button>
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