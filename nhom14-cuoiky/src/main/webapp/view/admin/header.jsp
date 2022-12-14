<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/admin" var="url"></c:url>
<c:url value="/view/web" var="urlw"></c:url>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>AdminTrangChu</title>
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
                  rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="${url}/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="${urlw}/css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="${urlw}/css/style.css" type="text/css">
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="${pageContext.request.contextPath}/trang-admin">Nhóm 14</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Tìm kiếm..." aria-label="Tìm Kiếm..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Navbar-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">Cài đặt</a></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/TrangChu">Trang chủ</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="${pageContext.request.contextPath}/DangXuat">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            
                            <a class="nav-link" href="${pageContext.request.contextPath}/trang-admin">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Sản phẩm
                            </a>
                            <div class="sb-sidenav-menu-heading">Đơn hàng</div>
                            
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Danh sách đơn hàng
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/bang"  >
                                        Tất cả đơn hàng
<%--                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>--%>
                                    </a>
<%--                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">--%>
<%--                                        <nav class="sb-sidenav-menu-nested nav">--%>
<%--                                            <a class="nav-link" href="${pageContext.request.contextPath}/DangNhap">Đăng nhập</a>--%>
<%--                                            <a class="nav-link" href="${pageContext.request.contextPath}/DangKy">Đăng ký</a>--%>
<%--                                            <a class="nav-link" href="${url}/password.jsp">Quên mật khẩu</a>--%>
<%--                                        </nav>--%>
<%--                                    </div>--%>
                                    <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/bang?status=0" >
                                        Đơn hàng mới
<%--                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>--%>
                                    </a>
                                    <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/bang?status=1" >
                                       Đơn hàng đang giao
                                        <%--                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>--%>
                                    </a>
                                    <a class="nav-link collapsed" href="${pageContext.request.contextPath}/admin/bang?status=2" >
                                        Đơn hàng đã giao
                                        <%--                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>--%>
                                    </a>

<%--                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordionPages">--%>
<%--                                        <nav class="sb-sidenav-menu-nested nav">--%>
<%--                                            <a class="nav-link" href="${pageContext.request.contextPath}/TrangBiLoi">ERROR</a>--%>
<%--                                        </nav>--%>
<%--                                    </div>--%>
                                </nav>
                            </div>
<%--                            <div class="sb-sidenav-menu-heading">Trực quan</div>--%>
<%--                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">--%>
<%--                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>--%>
<%--                                Trang--%>
<%--                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>--%>
<%--                            </a>--%>

<%--                            <a class="nav-link" href="${pageContext.request.contextPath}/admin/bang">--%>
<%--                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>--%>
<%--                                Bảng--%>
<%--                            </a>--%>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Đăng nhập với tư cách:</div>
                        ${sessionScope.account.fullName}
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">