package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.impl.CategoryDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Category;
import com.mycompany.nhom14.cuoiky.service.ICategoryService;

import java.util.List;

public class CategoryService implements ICategoryService {

    private CategoryDaoImpl categoryDao ;

    public CategoryService() {
        this.categoryDao = new CategoryDaoImpl();
    }

    @Override
    public List<Category> getAll() {
        return categoryDao.getAll();
    }
}
