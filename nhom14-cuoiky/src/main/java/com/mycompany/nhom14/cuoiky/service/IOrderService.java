/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service;

import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.Product;

import java.util.List;

/**
 *
 * @author Linh
 */
public interface IOrderService {
    void thanhToan(Order order);
    List<Order> getAllByUserId(int userId);
    List<Order> findAll();
    Order get(int id);
    void update(Order order);
    List<Order> getAllByStatus(int status);
}
