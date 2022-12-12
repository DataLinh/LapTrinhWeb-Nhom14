/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.IOrderService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.OrderServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Linh
 */
@WebServlet("/LichSuDatHang")
public class OrderHistoryController extends HttpServlet {

    private ICartItemService cartItemService = new CartItemServiceImpl();
    private IOrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/DangNhap/Login");
        } else {
            int userId = (int) session.getAttribute("userId");
            request.setAttribute("orders", orderService.getAllByUserId(userId));
            RequestDispatcher rd = request.getRequestDispatcher("/view/web/order-history.jsp");
            rd.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/DangNhap/Login");
        } else {
            int cartId = Integer.parseInt(request.getParameter("cartId"));
            request.setAttribute("cartItems", cartItemService.getAllByCartId(cartId));
            RequestDispatcher rd = request.getRequestDispatcher("/view/web/order-history-cart.jsp");
            rd.forward(request, response);
        }
    }
}
