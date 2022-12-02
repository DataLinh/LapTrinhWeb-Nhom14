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
                        <div class="row">${error}</div>
                    <table>                           
                        <thead>
                            <tr>
                                <th>Sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${cartItems}" var="c">
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img src="${url}/img/shopping-cart/cart-1.jpg" alt="">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>${c.product.title}</h6>
                                            <h5>${c.product.price}</h5>
                                        </div>
                                    </td>
                                    <td>
                                        <form action="GioHang" method="get">                                            
                                            <input type="hidden" name="action" 
                                                   value="updateItem">
                                            <input type="hidden" name="cartItemId" 
                                                   value="<c:out value='${c.id}'/>">
                                            <input type="hidden" name="productId" 
                                                   value="<c:out value='${c.product.id}'/>">
                                            <input type=text name="quantity" 
                                                   value="<c:out value='${c.quantity}'/>">
                                            <input type="submit" value="Cập nhật">
                                        </form>
                                    </td>
                                    <td class="cart__price"> ${c.quantity * c.product.price} đ</td>
                                    <td>
                                        <form action="GioHang" method="get">                                            
                                            <input type="hidden" name="action" 
                                                   value="updateItem">                                                                                 
                                            <input type="hidden" name="cartItemId" 
                                                   value="<c:out value='${c.id}'/>">
                                            <input type="hidden" name="productId" 
                                                   value="<c:out value='${c.product.id}'/>">
                                            <input type="hidden" name="quantity" 
                                                   value="0">
                                            <input type="submit" value="Xóa">
                                        </form> 
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn">
                            <a href="${pageContext.request.contextPath }/test">Tiếp tục mua sắm</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="${pageContext.request.contextPath }/GioHang?&action=remove"><i class="fa fa-spinner"></i> Xóa giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart__total">
                    <h6>Tổng tiền giỏ hàng</h6>
                    <ul>
                        <li>Tiền hàng <span>${total} đ</span></li>
                        <li>Tiền ship <span>0đ</span></li>
                        <li>Tổng <span>${total} đ</span></li>
                    </ul>
                    <a href="#" class="primary-btn">Mua hàng</a>



                </div>

            </div>
        </div>
</section>
<!-- Shopping Cart Section End -->
<%@ include file="footer.jsp" %>