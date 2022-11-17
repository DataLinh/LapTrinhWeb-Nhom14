/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.entities;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author Linh
 */
@Entity
@Table(name = "order_line")
public class OrderLine implements Serializable {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "PRICE")
    private int price;
    @Column(name = "QUATITY")
    private int quantity;
    @Column(name = "TOTAL_MONEY")
    private int totalMoney;

    @Column(name = "isDeleted")
    private boolean isDeleted;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ORDER_ID")
    private Order order;
//    @OneToMany(fetch = FetchType.LAZY,mappedBy="order_details", cascade=CascadeType.ALL)
//    private List<Product> products;

    public boolean isDeleted() {
        return isDeleted;
    }

    public void setDeleted(boolean deleted) {
        isDeleted = deleted;
    }
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the price
     */
    public int getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(int price) {
        this.price = price;
    }

    /**
     * @return the quantity
     */
    public int getQuantity() {
        return quantity;
    }

    /**
     * @param quantity the quantity to set
     */
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    /**
     * @return the totalMoney
     */
    public int getTotalMoney() {
        return totalMoney;
    }

    /**
     * @param totalMoney the totalMoney to set
     */
    public void setTotalMoney(int totalMoney) {
        this.totalMoney = totalMoney;
    }

    /**
     * @return the orders
     */
    public Order getOrders() {
        return order;
    }

    /**
     * @param orders the orders to set
     */
    public void setOrders(Order orders) {
        this.order = orders;
    }

    /**
     * @return the products
     */
//    public List<Product> getProducts() {
//        return products;
//    }
//
//    /**
//     * @param products the products to set
//     */
//    public void setProducts(List<Product> products) {
//        this.products = products;
//    }

    

    
}
