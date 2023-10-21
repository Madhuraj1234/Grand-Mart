<%@page import="com.entities.User"%>
<%
	User user = (User) session.getAttribute("current-user");
	if (user == null) {
		session.setAttribute("message", "You are not logged in ! Login first");
		response.sendRedirect("Login.jsp");
		return;
	} else {
		if (user.getUserType().equals("Admin")) {
			session.setAttribute("message", "You are not a normal user ! You are not allowed to access this page");
			response.sendRedirect("Login.jsp");
			return;

		}
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
<h1>This is normal user panel</h1>
</body>
</html>