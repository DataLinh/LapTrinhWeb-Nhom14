/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.IOrderLineDao;
import com.mycompany.nhom14.cuoiky.entities.OrderLine;
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
public class OrderLineDaoImpl implements IOrderLineDao {

    @Override
    public void insert(OrderLine orderLine) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.save(orderLine);
            transaction.commit();
        } catch (Exception e) {
            e.printStackTrace();
            if (transaction != null) {
                transaction.rollback();
            }
        }
    }

    @Override
    public void update(OrderLine orderLine) {
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(orderLine);
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
            OrderLine orderLine = session.get(OrderLine.class, id);
            if (orderLine != null) {
                session.delete(orderLine);
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
    public List<OrderLine> getAll() {
        List<OrderLine> orderItems = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            CriteriaBuilder builder = session.getCriteriaBuilder();
            CriteriaQuery<OrderLine> criteriaQuery = builder.createQuery(OrderLine.class);
            criteriaQuery.from(OrderLine.class);
            orderItems = session.createQuery(criteriaQuery).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderItems;
    }

    @Override
    public OrderLine get(int id) {
        OrderLine orderLine = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            orderLine = session.get(OrderLine.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return orderLine;
    }
}
