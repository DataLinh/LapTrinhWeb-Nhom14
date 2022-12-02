/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.User;

import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;
import java.io.IOException;
import java.util.List;
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
        String action = request.getParameter("action");
        if (action == null) {
            doGet_Display(request, response);
        } else {
            if (action.equalsIgnoreCase("buy")) {
                doGet_Buy(request, response);
            } else if (action.equalsIgnoreCase("remove")) {
                doGet_Remove(request, response);
            } else if (action.equalsIgnoreCase("updateItem")) {
                doGet_UpdateItem(request, response);
            }
        }
    }

    protected void doGet_UpdateItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Đợi phần login 
        //int userId = (int) request.getAttribute("username");
        int userId = 1;
        
        
        IUserDao userDao = new UserDaoImpl();
        Cart cart = userDao.getById(userId).getCart();
        int cartId = cart.getId();
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

    protected void doGet_Display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        // Đợi phần login 
        //int userId = (int) request.getAttribute("username");
        int userId = 1;
        
        
        IUserDao userDao = new UserDaoImpl();
        Cart cart = userDao.getById(userId).getCart();
        int cartId = cart.getId();        
        request.setAttribute("cartItems", cartItemService.getAllByCartId(cartId));
        request.setAttribute("total", cart.getTotal());
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/shopping-cart.jsp");
        rd.forward(request, response);
    }

    protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Đợi phần login 
        //int userId = (int) request.getAttribute("username");
        int userId = 1;
        
        
        userService.newCart(userId);
        doGet_Display(request, response);
    }

    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String pId = request.getParameter("productId");
        int productId = Integer.parseInt(pId);

        
        // Đợi phần login 
        //int userId = (int) request.getAttribute("username");
        int userId = 1;
        IUserDao userDao = new UserDaoImpl();
        int cartId = userDao.getById(userId).getCart().getId();

        
        ICartItemService cartItemService = new CartItemServiceImpl();
        cartItemService.addCartItem(cartId, productId, 1);
        response.sendRedirect("GioHang");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
