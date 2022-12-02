/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.Product;
import java.util.List;

/**
 *
 * @author Linh
 */
public interface IProductDao {
    Product get(int id);
    
    List<Product> getAll();
}
