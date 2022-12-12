/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.admin;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;


@WebServlet(urlPatterns = {"/DangKy","/DangKy/Register"})
public class DangKyController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	String url=request.getRequestURL().toString();
    	if(url.contains("Register")) {
    		register(request,response);
    	}
    	else
    	request.getRequestDispatcher("/view/admin/register.jsp").forward(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	String url=request.getRequestURL().toString();
    	if(url.contains("Register")) {
    		register(request,response);
    	}
    	else
    	request.getRequestDispatcher("/view/admin/register.jsp").forward(request,response);
    }
    protected void register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String fullName = request.getParameter("userName");
        byte[] temp1 = fullName.getBytes(StandardCharsets.ISO_8859_1);
        fullName = new String(temp1, StandardCharsets.UTF_8);
        String phoneNumber = request.getParameter("userPhoneNumber");
        byte[] temp2 = phoneNumber.getBytes(StandardCharsets.ISO_8859_1);
        phoneNumber = new String(temp2, StandardCharsets.UTF_8);
        String address = request.getParameter("userAddress");
        byte[] temp4 = address.getBytes(StandardCharsets.ISO_8859_1);
        address = new String(temp4, StandardCharsets.UTF_8);
        
		User user= new User();
		user.setFullName(fullName);
		user.setEmail(request.getParameter("userEmail"));
		user.setAddress(address);
		user.setPassword(request.getParameter("userPass"));
		user.setPhoneNumber(phoneNumber);
		long millis=System.currentTimeMillis();   
		java.sql.Date date=new java.sql.Date(millis); 
		user.setCreatedAt(date);
		user.setUpdateAt(date);
		String rePass = request.getParameter("reUserPass");
		
		if (!user.getPassword().equals(rePass)) {
			HttpSession session = request.getSession(true);
	        session.setAttribute("message1", "Mật khẩu nhập lại không khớp!!");
			String contextPath=request.getContextPath();
			response.sendRedirect(contextPath + "/DangKy");
		} else {
			IUserService UserService = new UserServiceImpl();
			User a =UserService.CheckEmail(user.getEmail());
			if (a == null) {
				UserService.Register(user);
				User temp=UserService.CheckEmail(user.getEmail());
				UserService.newCart(temp.getId());
				HttpSession session = request.getSession(true);
		        session.setAttribute("message1", null);
				String contextPath=request.getContextPath();
				response.sendRedirect(contextPath + "/DangNhap");
			} else {
				HttpSession session = request.getSession(true);
		        session.setAttribute("message1", "Email này đã tồn tại!!");
				String contextPath=request.getContextPath();
				response.sendRedirect(contextPath + "/DangKy");
			}
		}
	}
}
