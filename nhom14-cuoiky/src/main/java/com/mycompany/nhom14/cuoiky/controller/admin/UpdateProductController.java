package com.mycompany.nhom14.cuoiky.controller.admin;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.IProductService;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;


/**
 * Servlet implementation class UpdateProductController
 */
@WebServlet(urlPatterns = {"/UpdateProduct","/UpdateProduct/Create","/UpdateProduct/Update","/UpdateProduct/Reset"})
public class UpdateProductController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		Product product=null;
		if(url.contains("Reset")) {
			product=new Product();
			request.setAttribute("product", product);
		}
		request.getRequestDispatcher("/view/admin/update.jsp").forward(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url=request.getRequestURL().toString();
		if(url.contains("Create")) {
			insert(request,response);
		}else if(url.contains("Update")) {
			update(request,response);
		}else if(url.contains("Reset")) {
			request.setAttribute("product", new Product());
		}
		request.getRequestDispatcher("/view/admin/update.jsp").forward(request,response);
	}
protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Product product=new Product();
			product.setId(Integer.parseInt(request.getParameter("productId")));
			product.setTitle(request.getParameter("productTitle"));
			product.setPrice(Integer.parseInt(request.getParameter("productPrice")));
			product.setQuantity(Integer.parseInt(request.getParameter("productQuantity")));
			product.setImage(request.getParameter("productImage"));
			product.setDescription(request.getParameter("productDescription"));
			product.setCreatedAt(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("productCreatedAt")));
			product.setUpdateAt(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("productUpdatedAt")));
			IProductService prod=new ProductServiceImpl();
			prod.insert(product);
			request.setAttribute("message", "User inserted!!");
		}catch(Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: "+e.getMessage());
		}
		}
protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	try {
		Product product=new Product();
		product.setId(Integer.parseInt(request.getParameter("productId")));
		product.setTitle(request.getParameter("productTitle"));
		product.setPrice(Integer.parseInt(request.getParameter("productPrice")));
		product.setQuantity(Integer.parseInt(request.getParameter("productQuantity")));
		product.setImage(request.getParameter("productImage"));
		product.setDescription(request.getParameter("productDescription"));
		product.setCreatedAt(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("productCreatedAt")));
		product.setUpdateAt(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("productUpdatedAt")));
		IProductService prod=new ProductServiceImpl();
		prod.update(product);
		request.setAttribute("message", "User updated!!");
	}catch(Exception e) {
		e.printStackTrace();
		request.setAttribute("error", "Error: "+e.getMessage());
	}
	}


}
