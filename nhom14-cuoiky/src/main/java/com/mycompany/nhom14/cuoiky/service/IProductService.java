package com.mycompany.nhom14.cuoiky.service;

import com.mycompany.nhom14.cuoiky.entities.Product;

import java.util.List;

public interface IProductService {

    List<Product> getProductWithCondition(String txtSearch,int sort,int categoryID, int price);
    List<Product> getListByPage(List<Product> list, int start, int end);
    List<Product> getNewProduct();
    Product get(int id);
    void insert(Product product);

	void update(Product product);

	void delete(int productId) throws Exception;

	Product findById(String productId);

	List<Product> findAll();
    List<Product> getRelatedProduct(Product p);
}
