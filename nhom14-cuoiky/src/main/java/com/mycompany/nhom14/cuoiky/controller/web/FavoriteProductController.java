/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.entities.User;
import com.mycompany.nhom14.cuoiky.service.impl.FavoriteProductService;
import java.io.IOException;
import java.io.PrintWriter;
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
        response.setContentType("text/html;charset=UTF-8");
        User user = new User();
        user.setId(1);
        System.out.println("Okla");
        if (request.getParameter("idProduct") != null) {
            System.out.println("Okla");
            System.out.println(request.getParameter("idProduct"));
            String idProduct = request.getParameter("idProduct");
            Product product = new Product();
            product.setId(Integer.parseInt(idProduct));
            FavoriteProductService.XoaSanPhamYeuThich(user, product);
        }

        Collection <Product> products = FavoriteProductService.LayDanhSachSanPhamYeuThich(user);
        request.setAttribute("products", products);
        
        getServletContext()
                .getRequestDispatcher("/view/web/favorite-products.jsp")
                .forward(request, response);
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
