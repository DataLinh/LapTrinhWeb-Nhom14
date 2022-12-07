package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.impl.CategoryServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDetailController", value = "/ChiTiet")
public class ProductDetailController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        ProductServiceImpl productService = new ProductServiceImpl();
        Product product = productService.get(id);
        CategoryServiceImpl categoryService = new CategoryServiceImpl();
        request.setAttribute("categories",categoryService.getAll());
        request.setAttribute("product",product);
        request.getRequestDispatcher("/view/web/shop-details.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
