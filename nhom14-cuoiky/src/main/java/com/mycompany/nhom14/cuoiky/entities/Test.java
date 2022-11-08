/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.entities;

import com.mycompany.nhom14.cuoiky.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author Linh
 */
public class Test {

    public static void main(String[] args) {
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            Category c = session.get(Category.class, 2);
            System.out.println(c.getCategoryName());

            Discount d = session.get(Discount.class, 2);
            System.out.println(d.getName());

            Product p = session.get(Product.class, 1);
            System.out.println(p.getTitle());

            User u = session.get(User.class, 2);
            System.out.println(u.getAddress());

            Galery g = session.get(Galery.class, 2);
            System.out.println(g.getDescription());

            Feedback f = session.get(Feedback.class, 2);
            System.out.println(f.getFirstName());

            Order o = session.get(Order.class, 2);
            System.out.println(o.getAddress());

            OrderDetails od = session.get(OrderDetails.class, 2);
            System.out.println(od.getProduct());

//            Product p = new Product();
//            p.setTitle("Ok");            
//            Category c = session.get(Category.class, 2);
//            Discount d = session.get(Discount.class, 2);
//            p.setCategory(c);
//            p.setDiscount(d);
//            session.save(p);
            session.close();
        }
    }
}
