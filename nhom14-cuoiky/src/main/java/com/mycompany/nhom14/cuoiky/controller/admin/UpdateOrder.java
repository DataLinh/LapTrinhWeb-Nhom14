package com.mycompany.nhom14.cuoiky.controller.admin;

import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.entities.CartItem;
import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.IOrderService;
import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.OrderServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UpdateOrder", value = "/admin/updateOrder")
public class UpdateOrder extends HttpServlet {

    private ICartItemService cartItemService = new CartItemServiceImpl();
    private IOrderService orderService = new OrderServiceImpl();
    private IUserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet_Display(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost_ChangeStatus(request,response);
    }
    protected void doGet_Display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       int OrderID = Integer.parseInt(request.getParameter("id"));
        Order order = orderService.get(OrderID);
        request.setAttribute("cartItems", cartItemService.getAllByCartId(order.getCart().getId()));
        request.setAttribute("order",order);
        request.getRequestDispatcher("/view/admin/order-detail.jsp").forward(request,response);
    }
    protected void doPost_ChangeStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int OrderID = Integer.parseInt(request.getParameter("id"));
        Order order = orderService.get(OrderID);
        order.setStatus(order.getStatus()+1);
        orderService.update(order);
        response.sendRedirect(request.getContextPath()+"/admin/updateOrder?id="+OrderID);
    }
}
