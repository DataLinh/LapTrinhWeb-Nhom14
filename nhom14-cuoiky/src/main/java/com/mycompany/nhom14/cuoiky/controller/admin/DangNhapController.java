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

@WebServlet({"/DangNhap","/DangNhap/Login"})
public class DangNhapController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("Login")) {
			login(request, response);
		}
		else
		request.getRequestDispatcher("/view/admin/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = request.getRequestURL().toString();
		if (url.contains("Login")) {
			login(request, response);
		}
		else
		request.getRequestDispatcher("/view/admin/login.jsp").forward(request, response);
	}

	protected void login(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userName = request.getParameter("txtusername");
		String password = request.getParameter("txtpassword");
		IUserService UserService = new UserServiceImpl();
		/*User a = UserService.Login(userName, password);
			if (a == null) {
				RequestDispatcher rd = request.getRequestDispatcher("/view/admin/login.jsp");
				rd.forward(request, response);
			} else {*/ User a= new User(); a.setRole(true);
				if (a.isRole()) {
					RequestDispatcher rd = request.getRequestDispatcher("/view/admin/index.jsp");
					rd.forward(request, response);
				} else {
					RequestDispatcher rd = request.getRequestDispatcher("/view/web/index.jsp");
					rd.forward(request, response);
				}
			}
		}
//}
