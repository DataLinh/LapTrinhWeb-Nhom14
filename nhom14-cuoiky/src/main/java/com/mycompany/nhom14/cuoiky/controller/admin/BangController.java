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
import javax.servlet.http.HttpSession;

import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IOrderService;
import com.mycompany.nhom14.cuoiky.service.IProductService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.OrderServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;


@WebServlet(urlPatterns = {"/admin/bang"})
public class BangController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	findAll(request,response);
    	request.getRequestDispatcher("/view/admin/tables.jsp").forward(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	findAll(request,response);
    	request.getRequestDispatcher("/view/admin/tables.jsp").forward(request,response);
    }
protected void findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	try {
			IOrderService ord=new OrderServiceImpl();
			List<Order> list=ord.findAll();
			if(request.getParameter("status")!=null)
			{
				list = ord.getAllByStatus(Integer.parseInt(request.getParameter("status")));

			}
    		HttpSession session = request.getSession(true);
            session.setAttribute("order", list);
    		//request.setAttribute("order", list);
    	}catch(Exception e) {
    		e.printStackTrace();
    		request.setAttribute("error", "Error: "+e.getMessage());
    	}
    	}
}
