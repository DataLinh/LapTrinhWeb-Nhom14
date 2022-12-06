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
                            <span>Đặt hàng thành công!</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Checkout Section Begin -->
    <section class="checkout spad" style="width:95%">
        <div class="container" style="width:95%">
            <div class="checkout__form" style="width:95%">
                <form action="CuaHang" method="get" style="width:95%">                   
                    <div class="row" style="width:95%">
                        <div class="checkout__order">
                            <h4 class="order__title" style="text-align:center;"> Đơn hàng đã được tiếp nhận!</h4>
                            <h5 class="order__title" style="text-align:center;" >&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  Cảm ơn bạn đã sử dụng dịch vụ của chúng tôi &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;  </h5>                        
                        <button type="submit" class="site-btn"> Tiếp tục mua sắm !!</button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<%@ include file="footer.jsp" %>