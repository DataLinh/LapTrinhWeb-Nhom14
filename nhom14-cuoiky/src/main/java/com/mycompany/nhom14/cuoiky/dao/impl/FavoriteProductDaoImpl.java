/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.EntityManager.EntityManagerClass;
import com.mycompany.nhom14.cuoiky.dao.IFavoriteProductDao;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import java.util.Collection;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

/**
 *
 * @author son
 */
public class FavoriteProductDaoImpl implements IFavoriteProductDao{

    @Override
    public void delete(Product product, User user) {
        EntityManager em = EntityManagerClass.getEntityManager();
        Query query = em.createNativeQuery( "DELETE FROM favorite_product "+ 
                                            "WHERE user_id = ? AND product_id = ?;");
        query.setParameter(1, user.getId());
        query.setParameter(2, product.getId());
        EntityTransaction etx = em.getTransaction();
        etx.begin();
        query.executeUpdate();
        etx.commit();
    }

    @Override
    public void insert(Product product, User user) {
        EntityManager em = EntityManagerClass.getEntityManager();
        Query query = em.createNativeQuery( "INSERT INTO favorite_product (product_id, user_id) "+ 
                                            "VALUES (?, ?)");
        query.setParameter(2, user.getId());
        query.setParameter(1, product.getId());
        EntityTransaction etx = em.getTransaction();
        etx.begin();
        query.executeUpdate();
        etx.commit();    
    }

    @Override
    public Collection<Product> getAll(User user) {
        EntityManager em = EntityManagerClass.getEntityManager();
        Query query = em.createQuery(   "SELECT p FROM Product p JOIN p.users a "+ 
                                        "WHERE a.id = :idUser");
        query.setParameter("idUser", user.getId());
        return query.getResultList();    
    } 
}
