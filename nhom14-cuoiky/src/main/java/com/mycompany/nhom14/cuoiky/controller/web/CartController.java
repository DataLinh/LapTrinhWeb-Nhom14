/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Linh
 */
@WebServlet(urlPatterns = {"/GioHang"})
public class CartController extends HttpServlet {

    private ICartItemService cartItemService = new CartItemServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("cartItem", cartItemService.getAll());
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/shopping-cart.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
