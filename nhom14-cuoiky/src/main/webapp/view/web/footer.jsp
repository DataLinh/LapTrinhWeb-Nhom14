<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/web" var="url"></c:url>
</body>
<!-- Footer Section Begin -->
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#"><img src="${url}/img/footer-logo.png" alt=""></a>
                </div>
                <p>Chuyên cung cấp các sản phẩm chất lượng tốt nhất với giá thành tối ưu phù hợp cho học sinh sinh viên.</p>
                <a href="#"><img src="${url}/img/payment.png" alt=""></a>
            </div>
        </div>
        <div class="col-lg-2 offset-lg-1 col-md-3 col-sm-6">
            <div class="footer__widget">
                <h6>Danh mục</h6>
              <ul>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=1">Balo</a></li>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=2">Mũ lưỡi trai</a></li>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=3">Mũ</a></li>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=4">Áo hoodie</a></li>
                </ul>-->
            </div>
        </div>
        <div class="col-lg-2 col-md-3 col-sm-6">
            <div class="footer__widget">
                <h6 style="color: #111111">Danh mục </h6>
                <ul>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=5"> Áo khoác </a></li>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=6">Áo thun</a></li>
                    <li><a href="<%=request.getContextPath()%>/CuaHang?categoryID=7">Giày</a></li>
                </ul>
            </div>
        </div>
        <div class="col-lg-3 offset-lg-1 col-md-6 col-sm-6">
            <div class="footer__widget">
                <h6>Khuyến mãi</h6>
                <div class="footer__newslatter">
                    <p> Nhập địa chỉ email để nhận thông tin khuyến mãi từ chúng tôi.</p>
                    <form action="#">
                        <input type="text" placeholder="Your email">
                        <button type="submit"><span class="icon_mail_alt"></span></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 text-center">
            <div class="footer__copyright__text">
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <p> Trang web của nhóm 14 - Giao diện tham khảo từ ©
                    <script>
                        document.write(new Date().getFullYear());
                    </script>
                    <a> Colorlib </a>
                </p>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </div>
        </div>
    </div>
</div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="${url}/js/jquery-3.3.1.min.js"></script>
<script src="${url}/js/bootstrap.min.js"></script>
<script src="${url}/js/jquery.nice-select.min.js"></script>
<script src="${url}/js/jquery.nicescroll.min.js"></script>
<script src="${url}/js/jquery.magnific-popup.min.js"></script>
<script src="${url}/js/jquery.countdown.min.js"></script>
<script src="${url}/js/jquery.slicknav.js"></script>
<script src="${url}/js/mixitup.min.js"></script>
<script src="${url}/js/owl.carousel.min.js"></script>
<script src="${url}/js/main.js"></script>
</body>

</html>