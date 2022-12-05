package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.dao.impl.CategoryDaoImpl;
import com.mycompany.nhom14.cuoiky.dao.impl.ProductDaoImpl;
import com.mycompany.nhom14.cuoiky.entities.Category;
import com.mycompany.nhom14.cuoiky.entities.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShopController", value = "/CuaHang")
public class ShopController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //CurrentPage
        String xpage =request.getParameter("page");

        //search
        String txtSearch = null;
        if(request.getParameter("txtSearch")!=null)
        {
            txtSearch = request.getParameter("txtSearch");
        }

        //Category
        int categoryID = 0;

        if(request.getParameter("categoryID")!=null)
        {
            categoryID = Integer.parseInt(request.getParameter("categoryID"));
        }

        //Price
        int price = 0;
        if(request.getParameter("price")!=null)
        {
            price = Integer.parseInt(request.getParameter("price"));
        }

        //Sort
        int sort = 0;
        if(request.getParameter("sort")!=null)
        {
            sort = Integer.parseInt(request.getParameter("sort"));
        }

        // getProductBySearch
        ProductDaoImpl productDao = new ProductDaoImpl();
        List<Product> listProduct = productDao.search(txtSearch,sort);
        System.out.println(listProduct.size());

        listProduct = productDao.getWithCondition(listProduct,categoryID,price);
        System.out.println(listProduct.size());

        // getAllCategory
        CategoryDaoImpl categoryDao = new CategoryDaoImpl();
        List<Category> categories = categoryDao.getAll();

        //paging
        int page,numberItem = 9,start,end;
        int numberPage = (listProduct.size()%numberItem==0?(listProduct.size()/numberItem):((listProduct.size()/numberItem)+1));
        if(xpage == null){
            page = 1;
        }else {
            page = Integer.parseInt(xpage);
        }
        start=(page-1)*numberItem;
        end = Math.min(listProduct.size(),page*numberItem);
        List<Product> products = productDao.getListByPage(listProduct,start,end);



        request.setAttribute("price",price);
        request.setAttribute("txtSearch",txtSearch);
        request.setAttribute("categoryID",categoryID);
        request.setAttribute("sort",sort);
        request.setAttribute("page",page);
        request.setAttribute("numberPage",numberPage);
        request.setAttribute("categories",categories);
        request.setAttribute("products",products);
//        request.getRequestDispatcher("view/web/shop.jsp").forward(request,response);
        request.getRequestDispatcher("view/web/shop.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
