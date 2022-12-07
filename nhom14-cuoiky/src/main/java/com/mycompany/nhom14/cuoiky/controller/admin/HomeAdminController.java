/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.IProductService;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;

/**
 *
 * @author Linh
 */

@WebServlet(urlPatterns = {"/trang-admin","/trang-admin/Delete"})
public class HomeAdminController  extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	
    	String url=request.getRequestURL().toString();
		Product product=null;
		if(url.contains("Delete")) {
			delete(request,response);
			product=new Product();
			request.setAttribute("product", product);
		}
		else {
		findAll(request,response);
		request.getRequestDispatcher("/view/admin/index.jsp").forward(request,response);
    }
   }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	String url=request.getRequestURL().toString();
		if(url.contains("Delete")) {
			delete(request,response);
			request.setAttribute("product", new Product());
		}
		else {
			findAll(request,response);
			request.getRequestDispatcher("/view/admin/index.jsp").forward(request,response);
	    }
    }
    protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try {
    		IProductService prod=new ProductServiceImpl();
    		List<Product> list=prod.findAll(); 
    		request.setAttribute("product", list);
    	}catch(Exception e) {
    		e.printStackTrace();
    		request.setAttribute("error", "Error: "+e.getMessage());
    	}
    	}
protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int productId=Integer.parseInt(request.getParameter("productId"));
			IProductService prod=new ProductServiceImpl();
			prod.delete(productId);
			request.setAttribute("message", "User deleted!!");
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
		}

}
