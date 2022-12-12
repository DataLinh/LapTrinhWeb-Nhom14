/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.admin;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IProductService;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;

/**
 *
 * @author Linh
 */

@WebServlet(urlPatterns = { "/trang-admin", "/Delete" })
public class HomeAdminController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = request.getRequestURL().toString();
		if (url.contains("Delete")) {
			delete(request, response);
	
		}
			checklogin(request, response);
			findAll(request, response);
			request.getRequestDispatcher("/view/admin/index.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("Delete")) {
			delete(request, response);
		}
			checklogin(request, response);
			findAll(request, response);
			request.getRequestDispatcher("/view/admin/index.jsp").forward(request, response);
	}
	protected void checklogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		User a= (User) session.getAttribute("account");
		if(session.getAttribute("account") == null)
		{
			String contextPath=request.getContextPath();
			response.sendRedirect(contextPath + "/TrangBiLoi");
		}
		if(a.isRole()==false)
		{
			String contextPath=request.getContextPath();
			response.sendRedirect(contextPath + "/TrangBiLoi");
		}
	}

	protected void findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			IProductService prod = new ProductServiceImpl();
			List<Product> list = prod.findAll();
			request.setAttribute("product", list);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	protected void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Product product = new Product();
			product.setId(Integer.parseInt(request.getParameter("productIdDelete")));
			IProductService prod = new ProductServiceImpl();
			product = prod.get(product.getId());
			product.setIsDeleted(true);
			prod.update(product);
			request.setAttribute("message", "User deleted!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}

	}
}
