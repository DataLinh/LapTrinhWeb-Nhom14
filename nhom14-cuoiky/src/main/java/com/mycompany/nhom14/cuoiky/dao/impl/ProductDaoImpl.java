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

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;
import java.util.Queue;

/**
 *
 * @author Linh
 */
public class ProductDaoImpl implements IProductDao {
    @Override
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
    public List<Product> getAll() {
        List<Product> products = new ArrayList<>();
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "Select c From Product c Where c.isDeleted = false ";
            Query query = session.createQuery(HQL);
            products =query.getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }
    @Override
    public List<Product> getProductWithCondition(String txtSearch, int sort, int categoryID, int price) {
        List<Product> products = new ArrayList<>();
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "From Product as c  Where c.isDeleted = false ";

            if(txtSearch !=null)
            {
                HQL= HQL+"and c.title like :txtSearch ";
            }
            if(categoryID != 0){
                HQL += " and c.category.id =:categoryID";
            }
            if(price!=0){
                if(price==1){
                    HQL +=" and c.price >=0 and c.price <=100000";
                }
                else if(price==2){
                    HQL +=" and c.price >100000 and c.price <=250000";
                }
                else {
                    HQL +=" and c.price >250000 ";
                }
            }
            if(sort == 1){
                HQL= HQL+" order by c.price asc";
            }
            if(sort == 0){
                HQL= HQL+" order by c.id desc ";
            }
            if(sort == -1){
                HQL= HQL+" order by c.price desc ";
            }

            Query query = session.createQuery(HQL);
            if(txtSearch !=null){
                query.setParameter("txtSearch","%"+txtSearch+"%");
            }
            if(categoryID!=0){
                query.setParameter("categoryID",categoryID);
            }
            products =query.getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Product> getNewProduct() {
        List<Product> products = new ArrayList<>();
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "Select c From Product c Where c.isDeleted = false order by c.id desc";
            Query query = session.createQuery(HQL);
            products =query.setMaxResults(4).getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public static void main(String[] args) {
        ProductDaoImpl productDao = new ProductDaoImpl();
        List<Product> products = productDao.getAll();
        products.forEach(p->System.out.println(p.getId()));
    }

}
