/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.ICartItemDao;

import com.mycompany.nhom14.cuoiky.entities.CartItem;
import com.mycompany.nhom14.cuoiky.service.impl.OrderServiceImpl;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;
import javax.persistence.criteria.Root;

/**
 *
 * @author Linh
 */
public class CartItemDaoImpl implements ICartItemDao {

    @Override
    public void insert(CartItem cartItem) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(cartItem);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    @Override
    public void update(CartItem cartItem) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(cartItem);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    @Override
    public void delete(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            CartItem cartItem = session.get(CartItem.class, id);
            if (cartItem != null) {
                session.delete(cartItem);
            }
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    @Override
    public List<CartItem> getAllByCartId(int cartId) {
        List<CartItem> cartItems = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "SELECT c FROM CartItem c WHERE c.cart.id = :cartid and c.quantity > 0 ";
            Query query = session.createQuery(HQL);
            query.setParameter("cartid", cartId);
            cartItems = query.getResultList();            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItems;
    }

    @Override
    public CartItem get(int id) {
        CartItem cartItem = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            cartItem = session.get(CartItem.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItem;
    }

    @Override
    public CartItem findCartItem(int cartId, int productId) {
        CartItem cartItem = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "SELECT c FROM CartItem c WHERE c.product.id = :productid and c.cart.id = :cartid ";
            Query query = session.createQuery(HQL);
            query.setParameter("productid", productId);
            query.setParameter("cartid", cartId);
            List<CartItem> cartitems = query.getResultList();
            if (!cartitems.isEmpty()) {
                cartItem = cartitems.get(0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cartItem;
    }

}
