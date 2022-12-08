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
                            <a href="${pageContext.request.contextPath }/TrangChu">Trang chủ</a>
                        <a href="${pageContext.request.contextPath }/CuaHang">Cửa hàng</a>
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
                                <th>Thành tiền</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${cartItems}" var="c">
                                <tr>
                                    <td class="product__cart__item">
                                        <div class="product__cart__item__pic">
                                            <img src="${url}/${c.product.image}" alt="" width="90" height="90">
                                        </div>
                                        <div class="product__cart__item__text">
                                            <h6>${c.product.title}</h6>
                                            <h5>${c.product.price}</h5>
                                        </div>
                                    </td>
                                    <td style="text-align: center; vertical-align: middle;">
                                        <div class="row">
                                            <form action="GioHang" method="post">                                            
                                                <input type="hidden" name="action" 
                                                       value="add">
                                                <input type="hidden" name="cartItemId" 
                                                       value="${c.id}">
                                                <input type="hidden" name="productId" 
                                                       value="${c.product.id}">                                         
                                                <input type="image" src="${url}/img/icon/add.png" height="15" width="15">
                                            </form>
                                            <p>&ensp;${c.quantity}&ensp;</p>
                                            <form action="GioHang" method="post">                                            
                                                <input type="hidden" name="action" 
                                                       value="minus">
                                                <input type="hidden" name="cartItemId" 
                                                       value="${c.id}">
                                                <input type="hidden" name="productId" 
                                                       value="${c.product.id}">                                        
                                                <input type="image" src="${url}/img/icon/minus.png" height="15" width="15">
                                            </form>
                                        </div>
                                    </td>


                                    <td class="cart__price"> ${c.quantity * c.product.price} đ</td>
                                    <td>
                                        <form action="GioHang" method="post">                                            
                                            <input type="hidden" name="action" 
                                                   value="removeItem">                                                                                 
                                            <input type="hidden" name="cartItemId" 
                                                   value="${c.id}">
                                            <input type="hidden" name="productId" 
                                                   value="${c.product.id}">
                                            <input type="image" src="${url}/img/icon/delete.png" height="50" width="50" style="text-align:center;">
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
                            <a href="${pageContext.request.contextPath }/CuaHang">Tiếp tục mua sắm</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <form action="GioHang" method="post">                                            
                                <input type="hidden" name="action" 
                                       value="remove">   
                                <input type="submit"  class="site-btn" value="Xóa giỏ hàng">
                            </form>                         
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
                    <a href="${pageContext.request.contextPath }/DatHang" class="primary-btn">Đặt hàng ngay</a>
                </div>
            </div>
        </div>
</section>
<!-- Shopping Cart Section End -->
<%@ include file="footer.jsp" %>