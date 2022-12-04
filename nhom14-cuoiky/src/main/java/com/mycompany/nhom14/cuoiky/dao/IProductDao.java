/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.Product;

/**
 *
 * @author Linh
 */
public interface IProductDao {
    Product get(int id);

    List<Product> getAll();

    List<Product> getListByPage(List<Product> list, int start, int end);

    List<Product> search(String txtSearch,int sort);

    List<Product> getListByCategory(List<Product> list,int CategoryID);

    List<Product> getListByPrice(List<Product> list,int price);
    List<Product> getWithCondition(List<Product> list,int categoryID, int price);

}
