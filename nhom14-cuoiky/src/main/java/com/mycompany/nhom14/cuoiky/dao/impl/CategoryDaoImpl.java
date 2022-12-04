package com.mycompany.nhom14.cuoiky.dao.impl;

import com.mycompany.nhom14.cuoiky.dao.ICategory;
import com.mycompany.nhom14.cuoiky.entities.Category;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import org.hibernate.Session;

import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

public class CategoryDaoImpl implements ICategory {

    @Override
    public List<Category> getAll() {
        List<Category> categorys = new ArrayList<>();
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            String HQL = "Select c From Category c Where c.isDeleted = false ";
            Query query = session.createQuery(HQL);
            categorys =query.getResultList();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return categorys;
    }
}
