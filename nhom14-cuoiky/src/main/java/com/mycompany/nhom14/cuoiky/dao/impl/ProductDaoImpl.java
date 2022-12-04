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
    public List<Product> getListByPage(List<Product> list, int start, int end) {
        ArrayList<Product> products = new ArrayList<>();
        for(int i = start;i<end;i++){
            products.add(list.get(i));
        }
        return products;
    }
    @Override
    public List<Product> search(String txtSearch,int sort) {
        List<Product> products = new ArrayList<>();
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "From Product as c  Where c.isDeleted = false ";

            if(txtSearch !=null)
            {
                HQL= HQL+"and c.title like :txtSearch ";
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
            products =query.getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public List<Product> getListByCategory(List<Product> list,int CategoryID) {
        List<Product> products = new ArrayList<>();
        if(CategoryID == 0)
            return list;
        for (Product product :list){
            if(product.getCategory().getId() == CategoryID)
            {
                products.add(product);
                System.out.print(product.getId()+":"+product.getCategory().getId());
            }
        }
        return products;

    }
    public List<Product> getListByPrice(List<Product> list,int priceID) {
        List<Product> products = new ArrayList<>();
        int begin = 0, end=(int)Double.POSITIVE_INFINITY;
        if(priceID == 1)
        {
            end = 100000;
        }
        else if(priceID == 2)
        {
            begin = 100000;
            end = 200000;
        }
        else if(priceID ==3)
        {
            begin = 200000;
        }
        for (Product product :list){
            if(product.getPrice() >= begin && product.getPrice()<=end )
            {
                products.add(product);
            }
        }
        return products;
    }

    @Override
    public List<Product> getWithCondition(List<Product> list, int categoryID, int price) {
        return getListByPrice(getListByCategory(list,categoryID),price);
    }







    public static void main(String[] args) {
        ProductDaoImpl productDao = new ProductDaoImpl();
//        List<Product> products = productDao.getListByPrice(3);
//        products.forEach(p->System.out.println(p.getId()));
    }

}
