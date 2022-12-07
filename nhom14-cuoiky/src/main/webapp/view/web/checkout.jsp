<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<c:set var="items" value="${categories}" scope="request" />
<jsp:include page="header.jsp"></jsp:include>

    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Điền thông tin</h4>
                        <div class="breadcrumb__links">
                            <a href="${pageContext.request.contextPath }/TrangChu">Trang chủ</a>
                            <a href="${pageContext.request.contextPath }/CuaHang">Cửa hàng</a>
                            <span>Điền thông tin</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form action="DatHang" method="post">
                    <input type="hidden" name="action" value="order">   
                    <div class="row">
                        <div class="col-lg-8 col-md-6">

                            <div class="checkout__input">
                                    <p>Họ & Tên<span></span></p>
                                    <input type="text" name="fullName" value="${user.fullName}">
                            </div>

                            <div class="checkout__input">
                                <p>Số điện thoại<span></span></p>
                                <input type="text" name="phoneNumber" value="${user.phoneNumber}">

                            </div> 

                            <div class="checkout__input">
                                <p>Email<span></span></p>
                                <input type="text" name="email" value="${user.email}">
                            </div>
                            
                            <div class="checkout__input">
                                <p>Địa chỉ<span></span></p>
                                <input type="text" name="address" value="${user.address}">
                            </div>

                            <div class="checkout__input">
                                <p>Ghi chú đơn hàng<span></span></p>
                                <input type="text" name="note"  value="">
                            </div>
                        </div>
                            
                    <div class="col-lg-4 col-md-6">
                        <div class="checkout__order">
                            <h4 class="order__title">Đơn hàng của bạn</h4>
                            <div class="checkout__order__products">SL &emsp; Mặt hàng<span>Tổng</span></div>
                            <ul class="checkout__total__products">
                                <c:forEach items="${cartItems}" var="c">
                                    <li>${c.quantity}  &emsp; ${c.product.title} &emsp;  <span> &emsp; ${c.product.price*c.quantity}</span></li>
                                    </c:forEach>
                            </ul>
                            <ul class="checkout__total__all">
                                <li>Tổng tiền <span>${total}</span></li>
                            </ul>                            
                            <button type="submit" class="site-btn">ĐẶT HÀNG</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<%@ include file="footer.jsp" %>