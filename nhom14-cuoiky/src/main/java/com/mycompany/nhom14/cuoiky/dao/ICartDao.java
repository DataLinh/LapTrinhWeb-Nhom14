/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.Cart;

/**
 *
 * @author Linh
 */
public interface ICartDao {

    void insert(Cart cart);

    void edit(Cart cart);

    void delete(int id);
}
