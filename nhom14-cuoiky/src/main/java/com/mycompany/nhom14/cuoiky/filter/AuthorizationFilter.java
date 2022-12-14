/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.nhom14.cuoiky.filter;

import com.mycompany.nhom14.cuoiky.entities.User;

import com.mycompany.nhom14.cuoiky.service.IUserService;
import com.mycompany.nhom14.cuoiky.service.impl.UserServiceImpl;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Linh
 */
public class AuthorizationFilter implements Filter {

    private ServletContext context;
    private IUserService userService = new UserServiceImpl();

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String url = req.getRequestURI();
        if (url.contains("GioHang") || url.contains("DatHang")
                || url.contains("TrangCamOn") || url.contains("SanPhamYeuThich")) {
            HttpSession session = req.getSession();
            if (session.getAttribute("account") != null) {
                chain.doFilter(request, response);
            } else {
//                User user = new User();
//                user.setEmail(session.getId());
//                userService.Register(user);
//                User temp = userService.CheckEmail(user.getEmail());
//                userService.newCart(temp.getId());
//                session.setAttribute("account", temp);
//                session.setAttribute("userId", temp.getId());
                resp.sendRedirect(req.getContextPath() + "/DangNhap");
            }
        } else if( url.contains("Delete")
                || url.contains("UpdateProduct") || url.contains("Create") || url.contains("Update") || url.contains("Reset")
                || url.contains("Edit")|| url.contains("/admin/bang")) {
            HttpSession session = req.getSession();
            if (session.getAttribute("account") != null) {
            	User a=(User)session.getAttribute("account");
            	if(!a.isRole()) {
            		resp.sendRedirect("TrangChu");
            	}else {
            		chain.doFilter(request, response);
            	}
        }else {
        	 chain.doFilter(request, response);
        }
        }else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
