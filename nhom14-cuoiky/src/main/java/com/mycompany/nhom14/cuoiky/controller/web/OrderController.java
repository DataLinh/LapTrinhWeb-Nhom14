/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.IOrderService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.OrderServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.util.Date;
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
@WebServlet(urlPatterns = {"/DatHang"})
public class OrderController extends HttpServlet {

    private ICartItemService cartItemService = new CartItemServiceImpl();
    private IUserService userService = new UserServiceImpl();
    private IOrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_Display(request, response);
        }
    }

    protected void doGet_Display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        User user = userService.getById(userId);
        request.setAttribute("user", user);
        request.setAttribute("total", user.getCart().getTotal());
        request.setAttribute("cartItems", cartItemService.getAllByCartId(user.getCart().getId()));
        RequestDispatcher rd = request.getRequestDispatcher("/view/web/checkout.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_Display(request, response);
        } else if (action.equalsIgnoreCase("order")) {
            doPost_Order(request, response);
        }
    }

    protected void doPost_Order(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int userId = (int) session.getAttribute("userId");
        User user = userService.getById(userId);
        int total = user.getCart().getTotal();
        if (total > 0) {
            String fullName = request.getParameter("fullName");
            byte[] temp1 = fullName.getBytes(StandardCharsets.ISO_8859_1);
            fullName = new String(temp1, StandardCharsets.UTF_8);

            String phoneNumber = request.getParameter("phoneNumber");
            byte[] temp2 = phoneNumber.getBytes(StandardCharsets.ISO_8859_1);
            phoneNumber = new String(temp2, StandardCharsets.UTF_8);

            String note = request.getParameter("note");
            byte[] temp3 = note.getBytes(StandardCharsets.ISO_8859_1);
            note = new String(temp3, StandardCharsets.UTF_8);

            String address = request.getParameter("address");
            byte[] temp4 = address.getBytes(StandardCharsets.ISO_8859_1);
            address = new String(temp4, StandardCharsets.UTF_8);

            String email = request.getParameter("email");
            System.err.println(fullName);
            System.err.println(phoneNumber);
            System.err.println(email);
            System.err.println(note);
            System.err.println(address);
            Date date = new Date(System.currentTimeMillis());
            Order order = new Order();
            order.setAddress(address);
            order.setFullName(fullName);
            order.setDeleted(false);
            order.setUser(user);
            order.setEmail(email);
            order.setPhoneNumber(phoneNumber);
            order.setNote(note);
            order.setTotalMoney(user.getCart().getTotal());
            order.setOrderDate(date);
            order.setStatus(0);

            orderService.thanhToan(order);
            response.sendRedirect("TrangCamOn");
        } else {
            response.sendRedirect("GioHangTrong");
        }
    }
}
