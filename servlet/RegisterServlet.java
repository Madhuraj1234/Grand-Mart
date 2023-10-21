package com.servlet;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.User;
import com.tut.app;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Successfully Saved at: ").append(request.getContextPath());
		
		
		try {
			
			String userName=request.getParameter("user_name");
			
			String userEmail=request.getParameter("user_email");
			
			String userPass=request.getParameter("user_password");
			
			String userPhone=request.getParameter("user_phone");
			
			String userAddress=request.getParameter("user_address");
			
			//Validations
			
			if(userName.isEmpty())
			{
				out.println("Name cannot be blank");
				return;
			}
			
			User user=new User(userName, userEmail, userPass, userPhone, userAddress, "Normal");
			
			Session hibernateSession=app.getFactory().openSession();
			Transaction tx = hibernateSession.beginTransaction();
			
			int userID=(Integer) hibernateSession.save(user);
			
			tx.commit();
			hibernateSession.close();
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Registration Successfull !! ");
			
			response.sendRedirect("Register.jsp");
			return;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
