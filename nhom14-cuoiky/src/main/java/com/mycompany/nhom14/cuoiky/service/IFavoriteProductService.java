/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.service;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import java.util.Collection;

/**
 *
 * @author son
 */
public interface IFavoriteProductService {
    public Collection <Product> LayDanhSachSanPhamYeuThich(User user);
    public void ThemSanPhamYeuThich(User user, Product product);
    public void XoaSanPhamYeuThich(User user, Product product);
}
