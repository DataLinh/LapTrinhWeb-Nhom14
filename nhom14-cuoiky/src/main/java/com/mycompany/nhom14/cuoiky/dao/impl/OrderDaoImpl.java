/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.IOrderDao;
import com.mycompany.nhom14.cuoiky.entities.Order;
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
public class OrderDaoImpl implements IOrderDao {

    @Override
    public void insert(Order order) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(order);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    @Override
    public void update(Order order) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(order);
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
            Order order = session.get(Order.class, id);
            if (order != null) {
                session.delete(order);
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
    public List<Order> getAll() {
        List<Order> orders = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<Order> criteriaQuery = builder.createQuery(Order.class);
            criteriaQuery.from(Order.class);
            orders = session.createQuery(criteriaQuery).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orders;
    }

    @Override
    public Order get(int id) {
        Order order = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            order = session.get(Order.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return order;
    }
}
