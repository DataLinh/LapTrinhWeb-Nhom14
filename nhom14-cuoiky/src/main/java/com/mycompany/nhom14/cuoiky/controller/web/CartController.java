/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.User;

import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
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
@WebServlet(urlPatterns = {"/GioHang"})
public class CartController extends HttpServlet {

    private ICartItemService cartItemService = new CartItemServiceImpl();
    private IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null) {
            doGet_Display(request, response);
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_Display(request, response);
        } else if (action.equalsIgnoreCase("add")) {
            doPost_Add(request, response);
        } else if (action.equalsIgnoreCase("remove")) {
            doPost_Remove(request, response);
        } else if (action.equalsIgnoreCase("updateItem")) {
            doPost_UpdateItem(request, response);
        }
    }
    
    
    protected void doGet_Display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        User user = userService.getById(userId);
        int cartId = user.getCart().getId();
        request.setAttribute("cartItems", cartItemService.getAllByCartId(cartId));
        request.setAttribute("total", user.getCart().getTotal());
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/shopping-cart.jsp");
        rd.forward(request, response);
    }
    
    protected void doPost_UpdateItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        User user = userService.getById(userId);
        int cartId = user.getCart().getId();
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = -1;
        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));

        } catch (Exception e) {
            request.setAttribute("error", "Vui lòng nhập số hợp lệ");
        }
        if (quantity >= 0) {
            int cartItemId = Integer.parseInt(request.getParameter("cartItemId"));
            cartItemService.updateCartItem(cartItemId, cartId, productId, quantity);
        } else {
            request.setAttribute("error", "Vui lòng nhập số hợp lệ");
        }
        doGet_Display(request, response);
    }

    protected void doPost_Remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        User user = userService.getById(userId);
        userService.newCart(user.getId());
        doGet_Display(request, response);
    }

    protected void doPost_Add(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int productId = Integer.parseInt(request.getParameter("productId"));
        int userId = (int) session.getAttribute("userId");
        User user = userService.getById(userId);
        int cartId = user.getCart().getId();
        cartItemService.addCartItem(cartId, productId, 1);
        doGet_Display(request, response);
    }

}
