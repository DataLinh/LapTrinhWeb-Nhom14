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
                            <a href="./index.jsp">Trang chủ</a>
                            <a href="./shop.jsp">Cửa hàng</a>
                            <span>Đặt hàng thành công!</span>
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
                <form action="CuaHang" method="get">                   
                    <div class="row">
                        <div class="checkout__order">
                            <h4 class="order__title" style="text-align:center;"> Đơn hàng đã được tiếp nhận!</h4>
                            <h5 class="order__title" style="text-align:center;" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  </h5>
                            <div class="checkout__order__products">SL &emsp;&emsp;&emsp; Mặt hàng<span>Tổng</span></div>
                            <ul class="checkout__total__products">
                            <c:forEach items="${cartItems}" var="c">
                                <li>${c.quantity}  &emsp;&emsp;&emsp; ${c.product.title} &emsp;  <span> &emsp; ${c.product.price*c.quantity}</span></li>
                                </c:forEach>
                        </ul>
                        <ul class="checkout__total__all">
                            <li>Tổng tiền <span>${total}</span></li>
                        </ul>                            
                        <button type="submit" class="site-btn"> Tiếp tục mua sắm !!</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<%@ include file="footer.jsp" %>