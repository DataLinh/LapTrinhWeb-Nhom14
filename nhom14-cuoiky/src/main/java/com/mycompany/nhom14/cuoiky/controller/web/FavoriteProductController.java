/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.IFavoriteProductService;
import com.mycompany.nhom14.cuoiky.service.impl.FavoriteProductServiceImpl;
import java.io.IOException;
import java.util.Collection;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author son
 */
@WebServlet(urlPatterns = {"/SanPhamYeuThich"})
public class FavoriteProductController extends HttpServlet {
    final private IFavoriteProductService favoriteProductService = new FavoriteProductServiceImpl();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        if (userNotLogin(request, response)) {
            response.sendRedirect(request.getContextPath() + "/DangNhap/Login");
            return;
        }
        
        if ("DeleteFavoriteProduct".equals(request.getParameter("action"))) {
        DeleteFavoriteProduct(request, response);
        }
        
        if ("AddFavoriteProduct".equals(request.getParameter("action"))) {
            AddFavoriteProduct(request, response);
        }

        Collection <Product> products = getFavoriteProducts(request, response);
        request.setAttribute("products", products);

        getServletContext()
                .getRequestDispatcher("/view/web/favorite-products.jsp")
                .forward(request, response);
        
    }
    
    private boolean userNotLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        return user == null;
    }

    private void DeleteFavoriteProduct(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        Product product = createProductFromRequest(request);
        
        favoriteProductService.XoaSanPhamYeuThich(user, product);
    }
    
    private void AddFavoriteProduct(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        Product product = createProductFromRequest(request);
        
        favoriteProductService.ThemSanPhamYeuThich(user, product);
    }
    
    private Collection <Product> getFavoriteProducts(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        Product product = createProductFromRequest(request);
        return favoriteProductService.LayDanhSachSanPhamYeuThich(user);
    }
    
    private Product createProductFromRequest(HttpServletRequest request) {
        
        String idProduct = request.getParameter("idProduct");
        if (idProduct == null) return null;
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
