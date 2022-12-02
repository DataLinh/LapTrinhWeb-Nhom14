/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;

import com.mycompany.nhom14.cuoiky.dao.ICartDao;
import com.mycompany.nhom14.cuoiky.dao.IUserDao;
import com.mycompany.nhom14.cuoiky.dao.impl.CartDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.UserDaoImpl;
import com.mycompany.nhom14.cuoiky.service.IUserService;

/**
 *
 * @author Linh
 */
public class UserServiceImpl implements IUserService {

    private ICartDao cartDao;
    private IUserDao userDao;

    public UserServiceImpl() {
        cartDao = new CartDaoImpl();
        userDao = new UserDaoImpl();
    }

    @Override
    public void newCart(int userId) {
        userDao.newCart(userId);
    }

}
