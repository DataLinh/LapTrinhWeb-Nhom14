/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.ICartItemDao;
import com.mycompany.nhom14.cuoiky.dao.IOrderDao;
import com.mycompany.nhom14.cuoiky.dao.impl.CartDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.CartItemDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.OrderDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.CartItem;
import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.service.IOrderService;
import java.util.List;

/**
 *
 * @author Linh
 */
public class OrderServiceImpl implements IOrderService {

    private ICartDao cartDao;
    private IUserDao userDao;
    private ICartItemDao cartItemDao;   
    private IOrderDao orderDao;

    public OrderServiceImpl() {
        cartDao = new CartDaoImpl();
        userDao = new UserDaoImpl();
        cartItemDao = new CartItemDaoImpl();
        orderDao = new OrderDaoImpl();
    }

    @Override
    public void thanhToan(Order order) {
        order.setCart(order.getUser().getCart());
        userDao.newCart(order.getUser().getId());
        orderDao.insert(order);
    }
}
