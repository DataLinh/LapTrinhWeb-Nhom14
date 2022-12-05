/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.admin;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String user = request.getParameter("userName");
		String email = request.getParameter("userEmail");
		String pass = request.getParameter("userPass");
		String rePass = request.getParameter("reUserPass");
		
		if (!pass.equals(rePass)) {
			RequestDispatcher rd = request.getRequestDispatcher("/view/admin/register.jsp");
			rd.forward(request, response);
		} else {
			IUserService UserService = new UserServiceImpl();
			User a = UserService.CheckEmail(email);
			if (a == null) {
				UserService.Register(user, email, pass);
				RequestDispatcher rd = request.getRequestDispatcher("/view/admin/login.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/view/admin/register.jsp");
				rd.forward(request, response);
			}
		}
	}
}
