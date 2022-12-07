package com.mycompany.nhom14.cuoiky.controller.web;

import com.mycompany.nhom14.cuoiky.entities.Category;
import com.mycompany.nhom14.cuoiky.entities.Product;
import com.mycompany.nhom14.cuoiky.service.impl.CategoryServiceImpl;
import com.mycompany.nhom14.cuoiky.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.List;

@WebServlet(name = "ShopController", value = "/CuaHang")
public class ShopController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String queryString = null;
        if(request.getQueryString()!=null){
            queryString= URLDecoder.decode(request.getQueryString(), "UTF-8");
            if(queryString.contains("page=")){
                String[] arrOfStr = queryString.split("&");
                System.out.println(arrOfStr[arrOfStr.length-1]);
                queryString = queryString.replace("&"+arrOfStr[arrOfStr.length-1],"");
            }
        }
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
        int sort = 1;
        if(request.getParameter("sort")!=null)
        {
            sort = Integer.parseInt(request.getParameter("sort"));
        }
        // getProduct
        ProductServiceImpl productService = new ProductServiceImpl();
        List<Product> listProduct = productService.getProductWithCondition(txtSearch,sort,categoryID,price);

        // getAllCategory
        CategoryServiceImpl categoryService = new CategoryServiceImpl();
        List<Category> categories = categoryService.getAll();

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
        List<Product> products = productService.getListByPage(listProduct,start,end);

        request.setAttribute("amount",listProduct.size());
        request.setAttribute("price",price);
        request.setAttribute("txtSearch",txtSearch);
        request.setAttribute("categoryID",categoryID);
        request.setAttribute("sort",sort);
        request.setAttribute("page",page);
        request.setAttribute("numberPage",numberPage);
        request.setAttribute("categories",categories);
        request.setAttribute("products",products);
        request.setAttribute("queryString",queryString);
        request.getRequestDispatcher("view/web/shop.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
