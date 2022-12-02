/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Cart;
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

/**
 *
 * @author Linh
 */
@WebServlet(urlPatterns = {"/DatHang"})
public class OrderController extends HttpServlet{  
    
    private ICartItemService cartItemService = new CartItemServiceImpl();
    private IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_Display(request, response);
        } 
//        else {
//            if (action.equalsIgnoreCase("buy")) {
//                doGet_Buy(request, response);
//            } else if (action.equalsIgnoreCase("remove")) {
//                doGet_Remove(request, response);
//            } else if (action.equalsIgnoreCase("updateItem")) {
//                doGet_UpdateItem(request, response);
//            }
//        }
    }
    
    protected void doGet_Display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // Đợi phần login 
        //int userId = (int) request.getAttribute("username");
        int userId = 1;
        
        
        IUserDao userDao = new UserDaoImpl();
        Cart cart = userDao.getById(userId).getCart();
        int cartId = cart.getId();        
        request.setAttribute("cartItems", cartItemService.getAllByCartId(cartId));
        request.setAttribute("total", cart.getTotal());
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/checkout.jsp");
        rd.forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    }
}
