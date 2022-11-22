/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.util;

import com.mycompany.nhom14.cuoiky.entities.Category;
import com.mycompany.nhom14.cuoiky.entities.Discount;
import com.mycompany.nhom14.cuoiky.entities.Feedback;
import com.mycompany.nhom14.cuoiky.entities.Order;
import com.mycompany.nhom14.cuoiky.entities.OrderLine;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 *
 * @author Linh
 */
public class HibernateUtil {

    private static final SessionFactory FACTORY;

    static {
        Configuration conf = new Configuration();
        conf.configure("hibernate.cfg.xml");

        conf.addAnnotatedClass(Category.class);
        conf.addAnnotatedClass(Discount.class);
        conf.addAnnotatedClass(User.class);
        conf.addAnnotatedClass(Product.class);
        conf.addAnnotatedClass(Gallery.class);
        conf.addAnnotatedClass(Feedback.class);
        conf.addAnnotatedClass(Order.class);
        conf.addAnnotatedClass(OrderLine.class);

        ServiceRegistry registry = new StandardServiceRegistryBuilder().applySettings(conf.getProperties()).build();

        FACTORY = conf.buildSessionFactory(registry);
        
        
    }

    public static SessionFactory getFactory() {
        return FACTORY;
    }

}
