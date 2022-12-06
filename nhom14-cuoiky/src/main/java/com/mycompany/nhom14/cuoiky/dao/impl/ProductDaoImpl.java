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

import javax.persistence.EntityManager;
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
    
    @Override
    public void insert(Product product){
    	EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(product);
			em.getTransaction().commit();
		}catch(Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		}finally {
			em.close();
		}
    }
    @Override
    public void update(Product product){
    	EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(product);
			em.getTransaction().commit();
		}catch(Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		}finally {
			em.close();
		}
    }
    @Override
    public void delete(String productId) throws Exception{
    	EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			Product product=em.find(Product.class, productId);
			if(product != null) {
				em.remove(product);
			}else {
				throw new Exception("Khong tim thay");
			}
			em.getTransaction().commit();
		}catch(Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		}finally {
			em.close();
		}
    }
    @Override
    public Product findById(String productId){
    	EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		
		Product product=em.find(Product.class, productId);
		return product;
    }
    @Override
    public List<Product> findAll(){
    	EntityManagerFactory emf = Persistence
				.createEntityManagerFactory("com.mycompany_cuoiky-nhom14_war_1.0-SNAPSHOTPU");
		EntityManager em = emf.createEntityManager();
		String jpql="SELECT o from products o";
		TypedQuery<Product> query =em.createQuery(jpql,Product.class);
		return query.getResultList();
    }
}
