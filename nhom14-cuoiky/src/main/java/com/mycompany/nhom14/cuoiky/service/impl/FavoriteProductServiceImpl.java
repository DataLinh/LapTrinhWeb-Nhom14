/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service.impl;
import com.mycompany.nhom14.cuoiky.EntityManager.EntityManagerClass;
import com.mycompany.nhom14.cuoiky.dao.IFavoriteProductDao;
import com.mycompany.nhom14.cuoiky.dao.impl.FavoriteProductDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IFavoriteProductService;
import java.util.Collection;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;
/**
 *
 * @author son
 */
public class FavoriteProductServiceImpl implements IFavoriteProductService{
    private IFavoriteProductDao favoriteProductDao = null;
    
    public FavoriteProductServiceImpl() {
        favoriteProductDao = new FavoriteProductDaoImpl();
    }
    
    @Override
    public Collection <Product> LayDanhSachSanPhamYeuThich(User user) {
        return favoriteProductDao.getAll(user);
    }
    @Override
    public void ThemSanPhamYeuThich(User user, Product product) {
        favoriteProductDao.insert(product, user);
    }
    @Override   
    public void XoaSanPhamYeuThich(User user, Product product) {
        favoriteProductDao.delete(product, user);
    }
}
