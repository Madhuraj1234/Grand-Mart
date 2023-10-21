package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.entities.User;
import com.tut.app;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		//Authenticating user
		UserDao userDao=new UserDao(app.getFactory());
		User user= userDao.getUSerByEmailAndPassword(email, password);
		//System.out.println(user);
		HttpSession httpSession = request.getSession();
		
		PrintWriter out=response.getWriter();
		if(user==null)
		{
			System.out.println("<h1> Invalid User </h1>");
			httpSession.setAttribute("message", "Invalid Details! Try again");
			response.sendRedirect("Login.jsp");
			return;
		}
		else
		{
			out.println("<h1> Welcome " + user.getUserName() + "</h1>");
			
			//login
			httpSession.setAttribute("current-user", user);
			
			if(user.getUserType().equals("Admin"))
			{
				response.sendRedirect("Admin.jsp");
			}
			else if(user.getUserType().equals("Normal"))
			{
				response.sendRedirect("home.jsp");
			}
			else
			{
				out.println("We have not identified user type");
			}
			
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
