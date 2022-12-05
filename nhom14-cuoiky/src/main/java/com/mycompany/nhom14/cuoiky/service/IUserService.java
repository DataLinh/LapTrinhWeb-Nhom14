/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service;

import com.mycompany.nhom14.cuoiky.entities.User;

/**
 *
 * @author Linh
 */
public interface IUserService {
    void newCart(int cartId);
    User Login(String userEmail,String userPass);
	void Register(String userName, String Email, String userPass);
	User CheckEmail(String userName);
}
