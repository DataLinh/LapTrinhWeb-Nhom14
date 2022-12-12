/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.IUserDao;

import com.mycompany.nhom14.cuoiky.entities.Cart;
import com.mycompany.nhom14.cuoiky.entities.CartItem;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
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
		Transaction transaction = null;
		try (Session session = HibernateUtil.getFactory().openSession()) {
			transaction = session.beginTransaction();
			user = session.get(User.class, id);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction != null) {
				transaction.rollback();
			}
		}
		return user;
	}

	@Override
	public int getIdByCartId(int id) {
		User user = null;
		Cart cart = null;
		try (Session session = HibernateUtil.getFactory().openSession()) {
			cart = session.get(Cart.class, id);
			user = cart.getUser();
			return user.getId();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public void newCart(int userid) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getFactory().openSession()) {
			transaction = session.beginTransaction();
			Cart cart = new Cart();
			User user = session.get(User.class, userid);
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

	@Override
	public User Login(String email, String password) {
		try (Session session = HibernateUtil.getFactory().openSession()) {
			String jpql = "SELECT o FROM User o WHERE o.email=:email and o.password =:pass";
			Query query = session.createQuery(jpql);
			query.setParameter("email", email);
			query.setParameter("pass", password);
			User us = null;
			us = (User) query.getSingleResult();
			return us;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public User CheckEmail(String email) {
		try (Session session = HibernateUtil.getFactory().openSession()) {
			String jpql = "SELECT o FROM User o WHERE o.email=:email";
			Query query = session.createQuery(jpql);
			query.setParameter("email", email);
			return (User) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void Register(User user) {
		Transaction transaction = null;
		try (Session session = HibernateUtil.getFactory().openSession()) {
			transaction = session.beginTransaction();
			User entity = new User();
			entity.setEmail(user.getEmail());
			entity.setFullName(user.getFullName());
			entity.setPassword(user.getPassword());
			entity.setCreatedAt(user.getCreatedAt());
			entity.setUpdateAt(user.getUpdateAt());
			entity.setAddress(user.getAddress());
			entity.setPhoneNumber(user.getPhoneNumber());
			entity.setRole(false);
			session.save(entity);
			transaction.commit();
		} catch (Exception e) {
			e.printStackTrace();
			if (transaction != null) {
				transaction.rollback();
			}
		}

	}
}
