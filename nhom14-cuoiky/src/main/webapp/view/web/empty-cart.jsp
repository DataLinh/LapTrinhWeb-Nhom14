<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>

    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Đặt hàng thành công!</h4>
                        <div class="breadcrumb__links">
                            <a href="${pageContext.request.contextPath }/TrangChu">Trang chủ</a>
                        <a href="${pageContext.request.contextPath }/CuaHang">Cửa hàng</a>
                        <span>Giỏ hàng trống!</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Checkout Section Begin -->
<section style="text-align:center;">
    <img src="${url}/img/shopping-cart/empty-cart.webp" >
    <div class="col-lg-6 col-md-6 col-sm-6">
        <div class="continue__btn" style="text-align:center;">
            <a href="${pageContext.request.contextPath }/CuaHang" >Tiếp tục mua sắm</a>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<%@ include file="footer.jsp" %>