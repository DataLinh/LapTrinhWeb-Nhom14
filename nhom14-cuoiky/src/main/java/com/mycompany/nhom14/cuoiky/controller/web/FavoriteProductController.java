/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IFavoriteProductService;
import com.mycompany.nhom14.cuoiky.service.impl.CategoryService;
import com.mycompany.nhom14.cuoiky.service.impl.FavoriteProductServiceImpl;
import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author son
 */
@WebServlet(urlPatterns = {"/SanPhamYeuThich"})
public class FavoriteProductController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IFavoriteProductService favoriteProductService = new FavoriteProductServiceImpl();
        response.setContentType("text/html;charset=UTF-8");
        
        User user = new User();
        user.setId(1);
        
        if ("DeleteFavoriteProduct".equals(request.getParameter("action"))) {
            Product product = createProductFromRequest(request);
            favoriteProductService.XoaSanPhamYeuThich(user, product);
        }

        if ("AddFavoriteProduct".equals(request.getParameter("action"))) {
            Product product = createProductFromRequest(request);
            favoriteProductService.ThemSanPhamYeuThich(user, product);
        }
        
        Collection <Product> products = favoriteProductService.LayDanhSachSanPhamYeuThich(user);
        request.setAttribute("products", products);

        CategoryService categoryService = new CategoryService();
        request.setAttribute("categories",categoryService.getAll());

        getServletContext()
                .getRequestDispatcher("/view/web/favorite-products.jsp")
                .forward(request, response);
    }

    public Product createProductFromRequest(HttpServletRequest request) {
        String idProduct = request.getParameter("idProduct");
        Product product = new Product();
        product.setId(Integer.parseInt(idProduct));
        return product;  
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}
