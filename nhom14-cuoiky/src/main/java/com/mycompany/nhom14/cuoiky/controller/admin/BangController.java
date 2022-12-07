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
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IProductService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;


@WebServlet(urlPatterns = {"/admin/bang"})
public class BangController  extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	findAll(request,response);
    	request.getRequestDispatcher("/view/admin/table.jsp").forward(request,response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	findAll(request,response);
    	request.getRequestDispatcher("/view/admin/table.jsp").forward(request,response);
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
}
