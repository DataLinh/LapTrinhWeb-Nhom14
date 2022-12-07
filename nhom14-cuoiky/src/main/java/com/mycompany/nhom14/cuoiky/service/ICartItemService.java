/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service;

import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.CartItem;
import java.util.List;

/**
 *
 * @author Linh
 */
public interface ICartItemService {
    void addCartItem(int cartId, int productId, int quantity);
    
    void updateCartItem(int id, int productId , int cartId , int quantity);
    
    CartItem getCartItem(int id);
    
    List<CartItem> getAllByCartId(int cartId);
}
