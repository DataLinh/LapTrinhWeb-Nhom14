<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/web" var="url"></c:url>

    <!DOCTYPE html>
    <html lang="zxx">

        <head>
            <meta charset="UTF-8">
            <meta name="description" content="Male_Fashion Template">
            <meta name="keywords" content="Male_Fashion, unica, creative, html">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>Project nhóm 14</title>

            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
                  rel="stylesheet">

            <!-- Css Styles -->
            <link rel="stylesheet" href="${url}/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="${url}/css/style.css" type="text/css">
    </head>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__option">
            <div class="offcanvas__links">
                <a href="#">Đăng nhập</a>
                <a href="#">Câu hỏi thường gặp</a>
            </div>
            <div class="offcanvas__top__hover">
                <span>VND <i class="arrow_carrot-down"></i></span>
                <ul>
                    <li>VND</li>
                    <li>EUR</li>
                    <li>USD</li>
                </ul>
            </div>
        </div>
        <div class="offcanvas__nav__option">
            <a href="#" class="search-switch"><img src="${url}/img/icon/search.png" alt=""></a>
            <a href="${pageContext.request.contextPath}/SanPhamYeuThich"><img src="${url}/img/icon/heart.png" alt=""></a>
            <a href="${pageContext.request.contextPath}/GioHang"><img src="${url}/img/icon/cart.png" alt=""> <span>0</span></a>
            <div class="price">$0.00</div>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__text">
            <p> Miễn phí giao hàng toàn quốc.</p>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                            <p> Miễn phí giao hàng toàn quốc.</p>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                                <a href="#">Đăng nhập</a>
                                <a href="#">Đăng ký</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="${pageContext.request.contextPath}/index.jsp"><img src="${url}/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/TrangChu">Trang Chủ</a></li>
                            <li><a href="${pageContext.request.contextPath}/CuaHang">Sản phẩm</a></li>
                            <li><a href="#">Xem thêm</a>
                                <ul class="dropdown">
                                    <li><a href="${pageContext.request.contextPath}/ThongTinCuaHang">Về chúng tôi</a></li>
                                    <li><a href="${pageContext.request.contextPath}/shop-details">Thông tin cửa hàng</a></li>
<!--                                    <li><a href="${pageContext.request.contextPath}/CuaHang">Cửa hàng</a></li> -->
<!--                                    <li><a href="${pageContext.request.contextPath}/DatHang">Đặt hàng</a></li>-->
                                    <li><a href="${pageContext.request.contextPath}/Blog">Blog</a></li>
                                    <li><a href="${pageContext.request.contextPath}/LienHe">Liên hệ</a></li>

                                </ul>
                            </li>
                            <!--   <li class="active"><a href="./blog.jsp">Blog</a></li>  --> 
                            <li><a href="${pageContext.request.contextPath}/LichSuDatHang"> Lịch sử đặt hàng</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="#" class="search-switch"><img src="${url}/img/icon/search.png" alt=""></a>
                        <a href="${pageContext.request.contextPath}/SanPhamYeuThich"><img src="${url}/img/icon/heart.png" alt=""></a>
                        <a href="${pageContext.request.contextPath}/GioHang"><img src="${url}/img/icon/cart.png" alt=""> <span>0</span></a>
                        <div class="price">$0.00</div>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    <!-- Header Section End -->
    <body>