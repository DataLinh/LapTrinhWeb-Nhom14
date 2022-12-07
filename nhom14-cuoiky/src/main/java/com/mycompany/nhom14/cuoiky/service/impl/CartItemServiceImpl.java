/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.Product;

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
        Cart cart = cartDao.get(cartId);
        Product product = productDao.get(productId);
        if (cart != null && product != null) {
            CartItem cartItem = cartItemDao.findCartItem(cartId, productId);
            if (cartItem != null) {
                cartItem.setQuantity(quantity + cartItem.getQuantity());
                cartItemDao.update(cartItem);
            } else {
                try {
                    cartItem = new CartItem(cartId, quantity, cartDao.get(cartId), productDao.get(productId));
                    cartItemDao.insert(cartItem);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

            cart.setTotal(cart.getTotal() + quantity * product.getPrice());
            cartDao.update(cart);
        }
    }

    @Override
    public void updateCartItem(int id, int cartId, int productId, int quantity) {
        CartItem cartItem = cartItemDao.get(id);
        if (cartItem != null) {
            try {
                Cart cart = cartDao.get(cartId);
                Product product = productDao.get(productId);
                cartItem.setCart(cart);
                cartItem.setProduct(product);
                int quantityOld = cartItem.getQuantity();
                cartItem.setQuantity(quantity);
                int quantityNew = cartItem.getQuantity();
                int total = cart.getTotal();
                cart.setTotal(total +(quantityNew - quantityOld) *product.getPrice());
                cartDao.update(cart);
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
    public List<CartItem> getAllByCartId(int cartId) {
        return cartItemDao.getAllByCartId(cartId);
    }
}
