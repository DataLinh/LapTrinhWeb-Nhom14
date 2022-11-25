/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.impl.CartDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.service.ICartService;

/**
 *
 * @author Linh
 */
public class CartServiceImpl implements ICartService {

    ICartDao cartDao;

    public CartServiceImpl() {
        cartDao = new CartDaoImpl();
    }

    ;
    
    @Override
    public void insert(Cart cart) {
        cartDao.insert(cart);
    }

    @Override
    public void edit(Cart cart) {
        cartDao.edit(cart);
    }

    @Override
    public void delete(int id) {
        cartDao.delete(id);
    }
}
