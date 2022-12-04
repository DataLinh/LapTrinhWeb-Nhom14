/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.dao.IProductDao;
import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.ProductDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Linh
 */
@WebServlet("/test")
public class TestController extends HttpServlet {

    IUserDao userDao = new UserDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IProductDao product = new ProductDaoImpl();
        request.setAttribute("products", product.getAll());
        request.getRequestDispatcher("/view/web/test.jsp").forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
