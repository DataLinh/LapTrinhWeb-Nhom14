/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.dao.ICartItemDao;
import com.mycompany.nhom14.cuoiky.dao.IProductDao;
import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.CartDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.CartItemDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.ProductDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.CartItem;
import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import java.util.List;

/**
 *
 * @author Linh
 */
public class CartItemServiceImpl implements ICartItemService {

    private IUserDao userDao;
    private ICartDao cartDao;
    private IProductDao productDao;
    private ICartItemDao cartItemDao;

    public CartItemServiceImpl() {
        userDao = new UserDaoImpl();
        cartDao = new CartDaoImpl();
        productDao = new ProductDaoImpl();
        cartItemDao = new CartItemDaoImpl();
    }

    @Override
    public void addCartItem(int cartId, int productId, int quantity) {
        if (cartDao.get(cartId) != null && productDao.get(productId) != null && quantity > 0) {
            CartItem cartItem = cartItemDao.findCartItem(cartId, productId);
            if (cartItem != null) {

            } else {
                try {
                    cartItem = new CartItem(cartId, quantity, cartDao.get(cartId), productDao.get(productId));
                    cartItemDao.insert(cartItem);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    @Override
    public void updateCartItem(int id, int cartId, int productId, int quantity) {
        CartItem cartItem = cartItemDao.get(id);
        if (cartItem != null) {
            try {
                cartItem.setCart(cartDao.get(cartId));
                cartItem.setProduct(productDao.get(productId));
                cartItem.setQuantity(quantity);
                cartItemDao.update(cartItem);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public CartItem getCartItem(int id) {
        return cartItemDao.get(id);
    }

    @Override
    public List<CartItem> getAll() {
        return cartItemDao.getAll();
    }
}
