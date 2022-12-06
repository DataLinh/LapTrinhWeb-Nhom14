<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>

    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4> Lịch sử đặt hàng! </h4>
                        <div class="breadcrumb__links">
                            <a href="${pageContext.request.contextPath }/TrangChu">Trang chủ</a>
                        <a href="${pageContext.request.contextPath }/CuaHang">Cửa hàng</a>
                        <span>Lịch sử đặt hàng! </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<!-- Checkout Section Begin -->
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
<table style="width:95%">                           
    <thead>
        <tr>

            <th> Ngày đặt hàng </th>
            <th> Mã đơn hàng </th>
            <th> Tổng tiền</th>
            <td>  </td>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${orders}" var="o">
            <tr>
                <td> ${o.orderDate}</td>
                <td> ${o.id} </td>
                <td> ${o.cart.total}</td>
                <td> 
                    <form action="LichSuDatHang" method="post">
                        <input type="hidden" name="cartId" value="${o.cart.id}">
                        <input type="submit" class="site-btn" value="Xem chi tiết">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
                </div>
                </div>
                </div>
                </div>
</section>

<!-- Checkout Section End -->

<%@ include file="footer.jsp" %>