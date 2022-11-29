/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.OrderLine;
import com.mycompany.nhom14.cuoiky.util.HibernateUtil;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Linh
 */
public interface IOrderLineDao {

    void insert(OrderLine orderLine);

    void update(OrderLine orderLine);

    void delete(int id);

    List<OrderLine> getAll();

    OrderLine get(int id);
}
