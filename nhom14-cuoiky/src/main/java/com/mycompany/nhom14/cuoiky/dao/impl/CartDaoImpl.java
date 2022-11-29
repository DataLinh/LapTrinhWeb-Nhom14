/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.entities.Cart;
import org.hibernate.SessionFactory;
import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import javax.persistence.Query;

/**
 *
 * @author Linh
 */
public class CartDaoImpl implements ICartDao {

    public CartDaoImpl() {

    }

    @Override
    public void insert(Cart cart) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(cart);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

   /* @Override
    public void delete(int id) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            Cart cart = session.get(Cart.class, id);
            if (cart != null) {
                session.delete(cart);
            }
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }
*/
    @Override
    public void update(Cart cart) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(cart);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    @Override
    public List<Cart> getAll() {
        List<Cart> carts = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Cart> criteriaQuery = builder.createQuery(Cart.class);
            criteriaQuery.from(Cart.class);
            carts = session.createQuery(criteriaQuery).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return carts;
    }

    @Override
    public Cart get(int id) {
        Cart cart = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            cart = session.get(Cart.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cart;
    }

    @Override
    public Cart findCartByUserId(int id) {
        Cart cart = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "SELECT c FROM Cart c WHERE c.user.id = :id";
            Query query = session.createQuery(HQL);
            query.setParameter("id", id);
            List<Cart> carts = query.getResultList();
            if (!carts.isEmpty()) {
                cart = carts.get(0);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return cart;
    }

}
