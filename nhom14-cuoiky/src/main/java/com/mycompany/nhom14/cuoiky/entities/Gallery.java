/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.entities;

import java.io.Serializable;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
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
@Table(name = "galleries")
public class Gallery implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int id;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "PRODUCT_ID")
    private Product Product;

    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "IMAGE_LIST")
    private String imageList;

    @Column(name = "isDeleted")
    private boolean isDeleted;

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
     * @return the Product
     */
    public Product getProduct() {
        return Product;
    }

    /**
     * @param Product the Product to set
     */
    public void setProduct(Product Product) {
        this.Product = Product;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the imageList
     */
    public String getImageList() {
        return imageList;
    }

    /**
     * @param imageList the imageList to set
     */
    public void setImageList(String imageList) {
        this.imageList = imageList;
    }

}
