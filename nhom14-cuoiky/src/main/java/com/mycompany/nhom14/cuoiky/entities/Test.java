/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.entities;

import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.dao.ICartItemDao;
import com.mycompany.nhom14.cuoiky.dao.IOrderDao;
import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.CartDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.CartItemDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.OrderDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.service.ICartItemService;
import com.mycompany.nhom14.cuoiky.service.impl.CartItemServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import java.util.List;
import org.hibernate.Session;

/**
 *
 * @author Linh
 */
public class Test {

    public static void main(String[] args) {
        try ( Session session = HibernateUtil.getFactory().openSession()) {
            //            Category c = session.get(Category.class, 2);
            //            System.out.println(c.getCategoryName());
            //
            //            Discount d = session.get(Discount.class, 2);
            //            System.out.println(d.getName());

            IOrderDao od = new OrderDaoImpl();
            List<Order> os = od.getAllByUserId(2);
            for (Order o : os) {
                System.out.println(o.getCart().getTotal());
            }
//
//            User u = session.get(User.class, 2);
//            System.out.println(u.getAddress());
//
//            
//
//           Feedback f = session.get(Feedback.class, 2);
//            System.out.println(f.getFirstName());
//
//            Order o = session.get(Order.class, 2);
//           System.out.println(o.getAddress());
//            OrderDetails od = session.get(OrderDetails.class, 2);
//            System.out.println(od.getProduct());
            //        Product p = new Product();
            //        p.setTitle("Ok");            
            //      Category c = session.get(Category.class, 2);
            //      Discount d = session.get(Discount.class, 2);
            //     p.setCategory(c);
            //    p.setDiscount(d);
//            session.save(p);
            session.close();
        }
    }
}
