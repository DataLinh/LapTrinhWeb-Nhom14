/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.CartItem;
import java.util.List;

/**
 *
 * @author Linh
 */
public interface ICartItemDao {

    void insert(CartItem cartItem);

    void update(CartItem cartItem);

    void delete(int id);

    List<CartItem> getAllByCartId(int cartId);

    CartItem get(int id);

    CartItem findCartItem(int cartId, int productId);

}
