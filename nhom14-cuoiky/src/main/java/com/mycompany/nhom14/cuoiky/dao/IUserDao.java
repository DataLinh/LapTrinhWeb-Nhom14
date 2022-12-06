/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.dao;

import com.mycompany.nhom14.cuoiky.entities.User;

/**
 *
 * @author Linh
 */
public interface IUserDao {

    User getById(int id);

    int getIdByCartId(int id);

    void newCart(int userid);

}
