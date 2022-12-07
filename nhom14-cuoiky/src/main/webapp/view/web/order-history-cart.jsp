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
                        <h4> Chi tiết đơn đã đặt </h4>
                        <div class="breadcrumb__links">
                            <a href="${pageContext.request.contextPath }/TrangChu">Trang chủ</a>
                        <a href="${pageContext.request.contextPath }/CuaHang">Cửa hàng</a>
                        <a href="${pageContext.request.contextPath }/LichSuDatHang">Lịch sử đặt hàng</a>

                        <span>Chi tiết đơn đã đặt </span>
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
                        <h4 class="order__title" style="text-align:center;"> Lịch sử đặt hàng!</h4>
                        <h5 class="order__title" style="text-align:center;" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  </h5>
                        <div class="checkout__order__products">SL &emsp;&emsp;&emsp; Mặt hàng<span>Tổng</span></div>
                        <ul class="checkout__total__products">
                            <c:forEach items="${cartItems}" var="c">
                                <li>${c.quantity}  &emsp;&emsp;&emsp; ${c.product.title} &emsp;  <span> &emsp; ${c.product.price*c.quantity}</span></li>
                                </c:forEach>
                        </ul>        
                        <br>                        
                        <div class="btn btn-outline-info"  style="width:100%" >  
                        <a href="${pageContext.request.contextPath}/LichSuDatHang"> Lịch sử đặt hàng</a>
                        </div>
                        <br>
                        <button type="submit" class="site-btn"> Tiếp tục mua sắm !!</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</section>

<!-- Checkout Section End -->

<%@ include file="footer.jsp" %>