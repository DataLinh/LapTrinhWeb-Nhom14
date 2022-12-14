///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
// */
//package com.mycompany.nhom14.cuoiky.entities;
//
//
//import java.io.Serializable;
//import javax.persistence.CascadeType;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.FetchType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.ManyToOne;
//import javax.persistence.OneToOne;
//import javax.persistence.Table;
//
///**
// *
// * @author Linh
// */
//@Entity
//@Table(name = "order_line")
//public class OrderLine implements Serializable {
//	@Id
//    @Column(name = "ID")
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private int id;
//    @Column(name = "PRICE")
//    private int price;
//    @Column(name = "QUATITY")
//    private int quantity;
//    @Column(name = "TOTAL_MONEY")
//    private int totalMoney;
//    @Column(name = "isDeleted")
//    private boolean isDeleted;
//    
//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "ORDER_ID")
//    private Order orders;
//    
//    @OneToOne(cascade = CascadeType.ALL)
//    @JoinColumn(name = "PRODUCT_ID", referencedColumnName = "id")
//    private Product product;
//    
//
//    public boolean isDeleted() {
//        return isIsDeleted();
//    }
//
//    public void setDeleted(boolean deleted) {
//        setIsDeleted(deleted);
//    }
//    
//    public int getId() {
//		return id;
//	}
//
//	public void setId(int id) {
//		this.id = id;
//	}
//
//	public int getPrice() {
//		return price;
//	}
//
//	public void setPrice(int price) {
//		this.price = price;
//	}
//
//	public int getQuantity() {
//		return quantity;
//	}
//
//	public void setQuantity(int quantity) {
//		this.quantity = quantity;
//	}
//
//	public int getTotalMoney() {
//		return totalMoney;
//	}
//
//	public void setTotalMoney(int totalMoney) {
//		this.totalMoney = totalMoney;
//	}
//
//	public Order getOrders() {
//		return orders;
//	}
//
//	public void setOrders(Order orders) {
//		this.orders = orders;
//	}
//
//	public OrderLine() {
//	}
//
//	public OrderLine(int id, int price, int quantity, int totalMoney, boolean isDeleted, Order orders,Product product) {
//		this.id = id;
//		this.price = price;
//		this.quantity = quantity;
//		this.totalMoney = totalMoney;
//		this.isDeleted = isDeleted;
//		this.orders = orders;
//                this.product = product;
//	}
//
//    /**
//     * @return the isDeleted
//     */
//    public boolean isIsDeleted() {
//        return isDeleted;
//    }
//
//    /**
//     * @param isDeleted the isDeleted to set
//     */
//    public void setIsDeleted(boolean isDeleted) {
//        this.isDeleted = isDeleted;
//    }
//
//    /**
//     * @return the product
//     */
//    public Product getProduct() {
//        return product;
//    }
//
//    /**
//     * @param product the product to set
//     */
//    public void setProduct(Product product) {
//        this.product = product;
//    }
//}
