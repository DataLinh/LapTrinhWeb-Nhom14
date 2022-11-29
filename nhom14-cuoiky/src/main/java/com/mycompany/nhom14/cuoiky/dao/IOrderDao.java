/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.Order;
import java.util.List;

/**
 *
 * @author Linh
 */
public interface IOrderDao {
    void insert(Order order);
    void update(Order order);
    void delete(int id);
    List<Order> getAll();
    Order get(int id); 
}
