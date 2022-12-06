/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import java.util.Collection;

/**
 *
 * @author son
 */
public interface IFavoriteProductDao {
    public void delete(Product product, User user);
    public void insert(Product product, User user);
    public Collection <Product> getAll(User user);
}
