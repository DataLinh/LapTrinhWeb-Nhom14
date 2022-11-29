<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>

    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Giỏ hàng</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Trang chủ</a>
                            <a href="./shop.jsp">Cửa hàng</a>
                            <span>Giỏ hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Shopping Cart Section Begin -->
    <section class="shopping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Tổng tiền</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${cartItem}" var="c">
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img src="${url}/img/shopping-cart/cart-1.jpg" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>${c.product.title}</h6>
                                        </div> 
                                        <div>${c.product.quantity}</div>   
                                        <div>${c.product.price*c.product.quantity}</div>      
                                    </td>
                                </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            <a href="${pageContext.request.contextPath}/TrangChu">Tiếp tục mua sắm</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="${pageContext.request.contextPath}/GioHang"><i class="fa fa-spinner"></i> Cập nhật đơn hàng</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart__total">
                <h6>Tổng tiền giỏ hàng</h6>
                <ul>
                    <li>Tạm tính <span>$ 169.50</span></li>
                    <li>Tổng <span>$ 169.50</span></li>
                </ul>
                <a href="${pageContext.request.contextPath}/GioHang" class="primary-btn">Mua hàng</a>
            </div>
        </div>
    </div>
</div>
</section>
<!-- Shopping Cart Section End -->
<%@ include file="footer.jsp" %>