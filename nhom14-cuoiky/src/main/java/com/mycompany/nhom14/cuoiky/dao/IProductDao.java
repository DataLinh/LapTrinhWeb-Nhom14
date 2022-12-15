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

    List<Product> getProductWithCondition(String txtSearch,int sort,int categoryID, int price);

    List<Product> getNewProduct();
    void insert(Product product);

	void update(Product product);

	void delete(int productId) throws Exception;

	Product findById(String productId);

	List<Product> findAll();

    List<Product> getRelatedProduct(Product p);
}
