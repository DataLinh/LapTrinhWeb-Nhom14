/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.inject.Inject;
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

@WebServlet(urlPatterns = {"/DangKyOTP"})
public class OTPController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	request.getRequestDispatcher("/view/admin/OTP.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	HttpSession session = request.getSession(true);
    	Object code=session.getAttribute("tempCode");
    	String codeMain=request.getParameter("OTP");
    	if(code.equals(codeMain))
    	{
    		User a=(User)session.getAttribute("saveUser");
    		IUserService UserService = new UserServiceImpl();
    		UserService.Register(a);
			User temp=UserService.CheckEmail(a.getEmail());
			UserService.newCart(temp.getId());
			String contextPath=request.getContextPath();
			response.sendRedirect(contextPath + "/DangNhap");
			return;		
    	}
    	else {request.setAttribute("message3", "nhập sai mã OTP!!"); }   	
        request.getRequestDispatcher("/view/admin/OTP.jsp").forward(request, response);
    }
    
    
}
