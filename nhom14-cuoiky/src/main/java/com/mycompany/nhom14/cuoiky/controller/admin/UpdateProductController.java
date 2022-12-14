package com.mycompany.nhom14.cuoiky.controller.admin;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.taglibs.standard.extra.spath.Path;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.IProductService;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;

/**
 * Servlet implementation class UpdateProductController
 */
@MultipartConfig
@WebServlet(urlPatterns = { "/UpdateProduct", "/UpdateProduct/Create", "/UpdateProduct/Update", "/Reset", "/Edit" })
public class UpdateProductController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("Reset")) {
			edit(request, response);
		} else if (url.contains("Edit")) {
			edit(request, response);
		}
		request.getRequestDispatcher("/view/admin/update.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("Create")) {
			insert(request, response);
		} else if (url.contains("Update")) {
			update(request, response);
			edit(request, response);
		} else if (url.contains("Reset")) {
			edit(request, response);
		} else if (url.contains("Edit")) {
			edit(request, response);
		}
		request.getRequestDispatcher("/view/admin/update.jsp").forward(request, response);
	}

	protected void insert(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Product product = new Product();
			String productTitle = request.getParameter("productTitle");
            byte[] temp1 = productTitle.getBytes(StandardCharsets.ISO_8859_1);
            productTitle = new String(temp1, StandardCharsets.UTF_8);
			product.setTitle(productTitle);
			product.setPrice(Integer.parseInt(request.getParameter("productPrice")));
			product.setQuantity(Integer.parseInt(request.getParameter("productQuantity")));
			
			
			Part part=request.getPart("productImage");
			if(part != null) {
			//String realPath=request.getServletContext().getRealPath("");
			String fileName= Paths.get(part.getSubmittedFileName()).getFileName().toString();
			//part.write(realPath + "/" + fileName);
			String productImage = ("/" + fileName);
			product.setImage(productImage);
			}
			
			String productDescription = request.getParameter("productDescription");
            byte[] temp2 = productDescription.getBytes(StandardCharsets.ISO_8859_1);
            productDescription = new String(temp2, StandardCharsets.UTF_8);
			product.setDescription(productDescription);
			
			long millis=System.currentTimeMillis();   
			java.sql.Date date=new java.sql.Date(millis);
			product.setCreatedAt(date);
			
			IProductService prod = new ProductServiceImpl();
			prod.insert(product);
			request.setAttribute("message", "product inserted!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			Product product = new Product();
			product.setId(Integer.parseInt(request.getParameter("productId")));
			String productTitle = request.getParameter("productTitle");
            byte[] temp1 = productTitle.getBytes(StandardCharsets.ISO_8859_1);
            productTitle = new String(temp1, StandardCharsets.UTF_8);
			product.setTitle(productTitle);
			product.setPrice(Integer.parseInt(request.getParameter("productPrice")));
			product.setQuantity(Integer.parseInt(request.getParameter("productQuantity")));
			IProductService prod = new ProductServiceImpl();
			Product pro1=prod.get(product.getId());
			product.setCreatedAt(pro1.getCreatedAt());
			
			Part part=request.getPart("productImage");
			if(part!=null) {
			//String realPath=request.getServletContext().getRealPath("");
			String fileName= Paths.get(part.getSubmittedFileName()).getFileName().toString();
			//part.write("product/" + fileName);
			String productImage = ("/" + fileName);
			product.setImage(productImage);
			}else
			{
				product.setImage(pro1.getImage());
			}
			
			
			String productDescription = request.getParameter("productDescription");
            byte[] temp3 = productDescription.getBytes(StandardCharsets.ISO_8859_1);
            productDescription = new String(temp3, StandardCharsets.UTF_8);
			product.setDescription(productDescription);
			
			long millis=System.currentTimeMillis();   
			java.sql.Date date=new java.sql.Date(millis);
			product.setUpdateAt(date);
			
			prod.update(product);
			request.setAttribute("message", "Product updated!!");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}

	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			Product product1;
			String url = request.getRequestURL().toString();
			if (url.contains("Reset")) {
				product1 = new Product();
			} else {
				product1 = new Product();
				product1.setId(Integer.parseInt(request.getParameter("productId")));
				IProductService prod = new ProductServiceImpl();
				product1 = prod.get(product1.getId());
			}
			HttpSession session = request.getSession(true);
			session.setAttribute("productEdit", product1);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", "Error: " + e.getMessage());
		}
	}
	

}
