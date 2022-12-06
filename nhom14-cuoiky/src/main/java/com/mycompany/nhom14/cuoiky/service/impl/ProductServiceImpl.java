/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import java.util.List;

import com.mycompany.nhom14.cuoiky.dao.IProductDao;
import com.mycompany.nhom14.cuoiky.dao.impl.ProductDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.IProductService;


public class ProductServiceImpl implements IProductService {

    private IProductDao productDao;

    public ProductServiceImpl() {
        productDao=new ProductDaoImpl();
    }
    @Override
    public void insert(Product product) {
    	productDao.insert(product);
    }
    @Override
    public void update(Product product) {
    	productDao.update(product);
    }
    @Override
    public void delete(String productId) throws Exception{
    	productDao.delete(productId);
    }
    @Override
    public Product findById(String productId) {
    	return productDao.findById(productId);
    }
    @Override
    public List<Product> findAll(){
    	return productDao.findAll();
    }
}
