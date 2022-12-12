<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="${url}/img/hero/hero-1.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-7 col-md-8">
                        <div class="hero__text">
                            <h6>Bộ sưu tập mùa hè</h6>
                            <h2>Những bộ sưu tập mùa thu - đông 2030</h2>
                            <p>Thương hiệu đắt tiền. Được làm một cách cẩn thận, chuyên nghiệp
                                đề có được chất lượng ngoài mong đợi</p>
                            <a href="${pageContext.request.contextPath }/CuaHang" class="primary-btn">Mua sắm ngay <span class="arrow_right"></span></a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero__items set-bg" data-setbg="${url}/img/hero/hero-2.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-xl-5 col-lg-7 col-md-8">
                        <div class="hero__text">
                            <h6>Bộ sưu tập mùa hè</h6>
                            <h2>Những bộ sưu tập mùa thu - đông 2030</h2>
                            <p>Thương hiệu đắt tiền. Được làm một cách cẩn thận, chuyên nghiệp
                                đề có được chất lượng ngoài mong đợi</p>
                            <a href="${pageContext.request.contextPath }/CuaHang" class="primary-btn">Mua sắm ngay <span class="arrow_right"></span></a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Banner Section Begin -->
<section class="banner spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 offset-lg-4">
                <div class="banner__item">
                    <div class="banner__item__pic">
                        <img src="${url}/img/banner/banner-1.jpg" alt="">
                    </div>
                    <div class="banner__item__text">
                        <h2>Bộ sưu tập quần áo 2030</h2>
                        <a href="${pageContext.request.contextPath }/CuaHang">Mua sắm ngay</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-5">
                <div class="banner__item banner__item--middle">
                    <div class="banner__item__pic">
                        <img src="${url}/img/banner/banner-2.jpg" alt="">
                    </div>
                    <div class="banner__item__text">
                        <h2>Trang sức</h2>
                        <a href="${pageContext.request.contextPath }/CuaHang">Mua sắm ngay</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <div class="banner__item banner__item--last">
                    <div class="banner__item__pic">
                        <img src="${url}/img/banner/banner-3.jpg" alt="">
                    </div>
                    <div class="banner__item__text">
                        <h2>Đôi giày cho xuân 2030</h2>
                        <a href="${pageContext.request.contextPath }/CuaHang">Mua sắm ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Banner Section End -->

<%@ include file="footer.jsp" %>