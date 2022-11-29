/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.User;
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
public class UserDaoImpl implements IUserDao {
    @Override
    public User getById(int id) {
        User user = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            user = session.get(User.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    
    @Override
    public int getIdByCartId(int id) {
        User user = null;
        Cart cart = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            cart = session.get(Cart.class, id);
            user = cart.getUser();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user.getId();
    }

    @Override
    public void newCart(int userid){
         Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            Cart cart = new Cart();
            User user = session.get(User.class, userid );
            if (user != null) {
                user.setCart(cart);
            }
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }
    
}
