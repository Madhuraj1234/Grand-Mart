package com.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;

import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.entities.Category;
import com.entities.Product;
import com.tut.app;

@MultipartConfig
public class ProductOperationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ProductOperationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String op = request.getParameter("operation");
		if(op.trim().equals("addcategory"))
		{
			
		//Fetching category data
		String title = request.getParameter("catTitle");
		String description = request.getParameter("catDescription");
		
		Category category = new Category();
		category.setCategoryTitle(title);
		category.setCategoryDesc(description);
		
		//saving category to database
		CategoryDao categoryDao = new CategoryDao(app.getFactory());
		int catID = categoryDao.saveCategory(category);
		//out.println("category saved");

		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("message", "Category added successfully");
		response.sendRedirect("Admin.jsp");
		return;
		
		
		}
		else if(op.trim().equals("addproduct"))
		{
			//Fetching product data
			
			String proName = request.getParameter("proName");
			String proDescription = request.getParameter("proDescription");
			Part part = request.getPart("proPic");
			int proPrice = Integer.parseInt(request.getParameter("proPrice")) ;
			int proDiscount = Integer.parseInt(request.getParameter("proDiscount")) ;
			int proQuantity = Integer.parseInt(request.getParameter("proQuantity")) ;
			int catId = Integer.parseInt(request.getParameter("catId")) ;
			
			Product p = new Product();
			p.setpName(proName);
			p.setpDesc(proDescription);
			p.setpPhoto(part.getSubmittedFileName());
			p.setpPrice(proPrice);
			p.setpDiscount(proDiscount);
			p.setpQuantity(proQuantity);
			
			//get category by id
			CategoryDao cdoa = new CategoryDao(app.getFactory());
			Category category = cdoa.getCategoryByID(catId);
			
			p.setCategory(category);
			
			//product save...
			
			ProductDao pDao = new ProductDao(app.getFactory());
			pDao.saveProduct(p);
			
			//pic upload
			
			//find out the path to upload the photo
			
			String path = request.getRealPath("img") + File.separator + "products" + File.separator+part.getSubmittedFileName();
			System.out.println(path);
			
			//pic uploading code
			
			try {
				
				FileOutputStream fos = new FileOutputStream(path);
				
				InputStream is = part.getInputStream();
				
				//reading data
				
				byte []data = new byte[is.available()];
				is.read(data);
				
				//writing the data
				
				fos.write(data);
				fos.close();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
			
			
			out.println("Product saved successfully");
			
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message", "Product added successfully");
			response.sendRedirect("Admin.jsp");
			return;
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
