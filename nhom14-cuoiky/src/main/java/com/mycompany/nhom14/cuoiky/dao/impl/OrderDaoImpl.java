/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.IOrderDao;
import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;

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
	public List<Order> findAll() {
		List<Order> order = new ArrayList<>();
		try (Session session = HibernateUtil.getFactory().openSession()) {
			String HQL = "Select c From Order c order by c.id";
			Query query = session.createQuery(HQL);
			order = query.getResultList();
			

		} catch (Exception e) {
			e.printStackTrace();
		}
		return order;
	}

    @Override
    public List<Order> getAllByStatus(int status) {
        List<Order> order = new ArrayList<>();
        try (Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "Select c From Order c where c.status =:status order by c.id ";
            Query query = session.createQuery(HQL);
            query.setParameter("status",status);
            order = query.getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return order;
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
    public List<Order> getAllByUserId(int userId) {
        List<Order> orders = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "SELECT o FROM Order o WHERE o.user.id = :userid and o.isDeleted is false order by o.id DESC";
            Query query = session.createQuery(HQL);
            query.setParameter("userid", userId);
            orders = query.getResultList();
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
