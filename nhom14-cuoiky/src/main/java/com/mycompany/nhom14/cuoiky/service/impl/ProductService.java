package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.IProductDao;
import com.mycompany.nhom14.cuoiky.dao.impl.ProductDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.IProductService;

import java.util.ArrayList;
import java.util.List;

public class ProductService implements IProductService {
    private IProductDao productDao;

    public ProductService() {
        this.productDao = new ProductDaoImpl();
    }

    @Override
    public List<Product> getProductWithCondition(String txtSearch, int sort, int categoryID, int price) {
        return productDao.getProductWithCondition(txtSearch,sort,categoryID,price);
    }
    @Override
    public List<Product> getListByPage(List<Product> list, int start, int end) {
        ArrayList<Product> products = new ArrayList<>();
        for(int i = start;i<end;i++){
            products.add(list.get(i));
        }
        return products;
    }

    @Override
    public List<Product> getNewProduct() {
        return productDao.getNewProduct();
    }

    @Override
    public Product get(int id) {
        return productDao.get(id);
    }


}
