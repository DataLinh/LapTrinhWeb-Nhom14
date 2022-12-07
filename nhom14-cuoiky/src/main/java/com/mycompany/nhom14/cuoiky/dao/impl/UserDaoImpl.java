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
        Transaction transaction = null;
        try ( Session session = HibernateUtil.getFactory().openSession()) {            
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
        try ( Session session = HibernateUtil.getFactory().openSession()) {
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
        try ( Session session = HibernateUtil.getFactory().openSession()) {
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
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		try {
			String jpql = "SELECT o FROM users o WHERE o.email=:email and o.password =:pass";
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("email", "%" + email + "%");
			query.setParameter("pass", "%" + password + "%");
			return query.getSingleResult();
		} catch (Exception e) {
		}
		return null;
	}

	@Override
	public User CheckEmail(String email) {
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		try {
			String jpql = "SELECT o FROM users o WHERE o.email=:email";
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("email", "%" + email + "%");
			return query.getSingleResult();
		} catch (Exception e) {
		}
		return null;
	}

	@Override
	public void Register(String userName, String userEmail, String userPass) {
		EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			User entity = new User();
			entity.setEmail(userEmail);
			entity.setFullName(userName);
			entity.setPassword(userPass);
			entity.setRole(false);
			em.persist(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

}
