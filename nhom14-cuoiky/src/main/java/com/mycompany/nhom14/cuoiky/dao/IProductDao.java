/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import java.util.List;

import com.mycompany.nhom14.cuoiky.entities.Product;

/**
 *
 * @author Linh
 */
public interface IProductDao {
    Product get(int id);

	void insert(Product product);

	void update(Product product);

	void delete(String productId) throws Exception;

	Product findById(String productId);

	List<Product> findAll();
}
