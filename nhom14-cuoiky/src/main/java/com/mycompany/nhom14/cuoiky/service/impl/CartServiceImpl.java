/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.impl.CartDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.service.ICartService;

/**
 *
 * @author Linh
 */
public class CartServiceImpl implements ICartService {

    private  ICartDao cartDao;
    private  IUserDao userDao;

    public CartServiceImpl() {
        cartDao = new CartDaoImpl();
        userDao = new UserDaoImpl();
    }

    @Override
    public void create(int userId) {
        if (cartDao.findCartByUserId(userId) == null) {
            try {
                Cart cart = new Cart(0, userDao.getById(userId));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void update(int id, int total) {
        Cart cart = cartDao.get(id);
        if (cart != null) {
            try {
                cart.setTotal(total);
                cartDao.update(cart);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    
    
    
}
