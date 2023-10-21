<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<%@include file="Components/Common_CSS_JS.jsp"%>
</head>
<body>
	<%@include file="Components/navbar.jsp"%>

	<div class="container mb-3">
		<div class="row">
			<div class="col-md-5 offset-md-3">
				<div class="card mt-4" style="border-color:#00897b;">

					<div class="card-header card text-white" style="background-color:#00897b;">
						<h3 class="text-center">Login</h3>
					</div>

					<div class="card-body">
					
					<%@include file="Components/message.jsp" %>
						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> <input
									name="email" type="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									placeholder="Enter email"> <small id="emailHelp"
									class="form-text text-muted">We'll never share your
									email with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									name="password" type="password" class="form-control"
									id="exampleInputPassword1" placeholder="Password">
							</div>
							
							<a href="Register.jsp" class="text-center d-block mb-2">If not registered, Click here</a>

							<div class="container text-center">
								<button type="submit" class="btn btn-outline-success ">Submit</button>
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