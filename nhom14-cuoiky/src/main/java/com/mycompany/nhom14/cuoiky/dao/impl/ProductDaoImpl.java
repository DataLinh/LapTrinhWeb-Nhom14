/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.IProductDao;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

/**
 *
 * @author Linh
 */
public class ProductDaoImpl implements IProductDao {

    public Product get(int id) {
        Product product = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            product = session.get(Product.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }
}
