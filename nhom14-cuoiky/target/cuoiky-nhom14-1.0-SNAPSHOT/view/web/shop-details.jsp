<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>

    <!-- Shop Details Section Begin -->
    <section class="shop-details">
        <div class="product__details__pic">
            <div class="container">            
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-1.png">
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">
                                <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-2.png">
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">
                                <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-3.png">
                                </div>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">
                                <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-4.png">
                                    <i class="fa fa-play"></i>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-lg-6 col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="${url}/img/shop-details/product-big-2.png" alt="">
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-2" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="${url}/img/shop-details/product-big-3.png" alt="">
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-3" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="${url}/img/shop-details/product-big.png" alt="">
                            </div>
                        </div>
                        <div class="tab-pane" id="tabs-4" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="${url}/img/shop-details/product-big-4.png" alt="">
                                <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product__details__content">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-8">
                    <div class="product__details__text">
                        <h4>Hooded thermal anorak</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                            <span> - 5 Nhận xét</span>
                        </div>
                        <h3>$270.00 <span>70.00</span></h3>
                        <p>Áo khoác với lớp lót chần bông và mũ trùm đầu có thể điều chỉnh được.
                            Có tay áo dài với các mấu có thể điều chỉnh được, viền áo không đối 
                            xứng có thể điều chỉnh với các mấu bên đàn hồi và phía trước được buộc 
                            chặt bằng vải thun.</p>
                        <div class="product__details__option">
                            <div class="product__details__option__size">
                                <span>Kích cỡ:</span>
                                <label for="xxl">xxl
                                    <input type="radio" id="xxl">
                                </label>
                                <label class="active" for="xl">xl
                                    <input type="radio" id="xl">
                                </label>
                                <label for="l">l
                                    <input type="radio" id="l">
                                </label>
                                <label for="sm">s
                                    <input type="radio" id="sm">
                                </label>
                            </div>
                            <div class="product__details__option__color">
                                <span>Màu sắc:</span>
                                <label class="c-1" for="sp-1">
                                    <input type="radio" id="sp-1">
                                </label>
                                <label class="c-2" for="sp-2">
                                    <input type="radio" id="sp-2">
                                </label>
                                <label class="c-3" for="sp-3">
                                    <input type="radio" id="sp-3">
                                </label>
                                <label class="c-4" for="sp-4">
                                    <input type="radio" id="sp-4">
                                </label>
                                <label class="c-9" for="sp-9">
                                    <input type="radio" id="sp-9">
                                </label>
                            </div>
                        </div>
                        <div class="product__details__cart__option">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1">
                                </div>
                            </div>
                            <a href="#" class="primary-btn">Thêm vào giỏ hàng</a>
                        </div>
                        <div class="product__details__btns__option">
                            <a href="#"><i class="fa fa-heart"></i> Thêm vào danh mục yêu thích</a>
                            <a href="#"><i class="fa fa-exchange"></i> Thêm để so sánh</a>
                        </div>
                        <div class="product__details__last__option">
                            <h5><span>Thanh toán trực tuyến an toàn</span></h5>
                            <img src="${url}/img/shop-details/details-payment.png" alt="">
                            <ul>
                                <li><span>SKU:</span> 3812912</li>
                                <li><span>Danh mục:</span> Quần áo</li>
                                <li><span>Thẻ:</span> Quần áo</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                                   role="tab">Mô tả</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">Nhận xét của khách hàng (5)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-7" role="tab">Thông tin thêm</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                <div class="product__details__tab__content">

                                    <div class="product__details__tab__content__item">
                                        <h5>Thông tin sản phẩm</h5>
                                        <p>Pocket PC là một máy tính cầm tay, có nhiều tính năng giống như một chiếc PC hiện đại. 
                                            Những thiết bị nhỏ gọn tiện dụng này cho phép các cá nhân truy xuất và lưu trữ các tin 
                                            nhắn e-mail, tạo một hồ sơ liên lạc, điều phối các cuộc hẹn, lướt internet, trao đổi 
                                            tin nhắn văn bản và hơn thế nữa. Mỗi sản phẩm được dán nhãn là Máy tính bỏ túi phải 
                                            được trang bị phần mềm cụ thể để vận hành thiết bị và phải có màn hình cảm ứng và bàn 
                                            di chuột. Như trường hợp của bất kỳ sản phẩm công nghệ mới nào, chi phí của một chiếc 
                                            Pocket PC rất đáng kể trong thời gian phát hành sớm. Với giá khoảng 700 USD, người tiêu 
                                            dùng có thể mua một trong những máy tính bỏ túi hàng đầu vào năm 2003. Với khoảng 
                                            350,00 $ , một Pocket PC mới hiện có thể được mua.</p>
                                        <p>Như trường hợp của bất kỳ sản phẩm công nghệ mới nào, chi phí của một Pocket PC là đáng kể 
                                            trong thời gian phát hành sớm. Với số tiền khoảng 700 USD, người tiêu dùng có thể mua một 
                                            trong những máy tính bỏ túi hàng đầu vào năm 2003. Ngày nay, khách hàng nhận thấy rằng giá 
                                            cả đã trở nên hợp lý hơn nhiều khi tính mới không còn nữa. Với khoảng 350,00 đô la, một Pocket 
                                            PC mới hiện có thể được mua.</p>
                                    </div>
                                    <div class="product__details__tab__content__item">
                                        <h5>Chất liệu sử dụng</h5>
                                        <p>Polyester được coi là chất lượng thấp hơn do không có chất lượng tự nhiên của nó? Được làm từ chất 
                                            liệu tổng hợp, không tự nhiên như len. Những bộ quần áo bằng polyester dễ bị nhăn và nổi tiếng là 
                                            không thoáng khí. Những bộ quần áo polyester có xu hướng bóng hơn so với những bộ quần áo bằng len 
                                            và cotton, điều này có thể khiến bộ quần áo trông rẻ tiền. Kết cấu của nhung sang trọng và thoáng khí. 
                                            Velvet là một lựa chọn tuyệt vời cho áo khoác dạ tiệc và có thể mặc quanh năm.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-6" role="tabpanel">
                                <div class="product__details__tab__content">
                                    <div class="product__details__tab__content__item">
                                        <h5>Thông tin sản phẩm</h5>
                                        <p>Pocket PC là một máy tính cầm tay, có nhiều tính năng giống như một chiếc PC hiện đại. 
                                            Những thiết bị nhỏ gọn tiện dụng này cho phép các cá nhân truy xuất và lưu trữ các tin 
                                            nhắn e-mail, tạo một hồ sơ liên lạc, điều phối các cuộc hẹn, lướt internet, trao đổi 
                                            tin nhắn văn bản và hơn thế nữa. Mỗi sản phẩm được dán nhãn là Máy tính bỏ túi phải 
                                            được trang bị phần mềm cụ thể để vận hành thiết bị và phải có màn hình cảm ứng và bàn 
                                            di chuột. Như trường hợp của bất kỳ sản phẩm công nghệ mới nào, chi phí của một chiếc 
                                            Pocket PC rất đáng kể trong thời gian phát hành sớm. Với giá khoảng 700 USD, người tiêu 
                                            dùng có thể mua một trong những máy tính bỏ túi hàng đầu vào năm 2003. Với khoảng 
                                            350,00 $ , một Pocket PC mới hiện có thể được mua.</p>
                                        <p>Như trường hợp của bất kỳ sản phẩm công nghệ mới nào, chi phí của một Pocket PC là đáng kể 
                                            trong thời gian phát hành sớm. Với số tiền khoảng 700 USD, người tiêu dùng có thể mua một 
                                            trong những máy tính bỏ túi hàng đầu vào năm 2003. Ngày nay, khách hàng nhận thấy rằng giá 
                                            cả đã trở nên hợp lý hơn nhiều khi tính mới không còn nữa. Với khoảng 350,00 đô la, một Pocket 
                                            PC mới hiện có thể được mua.</p>
                                    </div>
                                    <div class="product__details__tab__content__item">
                                        <h5>Chất liệu sử dụng</h5>
                                        <p>Polyester được coi là chất lượng thấp hơn do không có chất lượng tự nhiên của nó? Được làm từ chất 
                                            liệu tổng hợp, không tự nhiên như len. Những bộ quần áo bằng polyester dễ bị nhăn và nổi tiếng là 
                                            không thoáng khí. Những bộ quần áo polyester có xu hướng bóng hơn so với những bộ quần áo bằng len 
                                            và cotton, điều này có thể khiến bộ quần áo trông rẻ tiền. Kết cấu của nhung sang trọng và thoáng khí. 
                                            Velvet là một lựa chọn tuyệt vời cho áo khoác dạ tiệc và có thể mặc quanh năm.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-7" role="tabpanel">
                                <div class="product__details__tab__content">
                                    <div class="product__details__tab__content__item">
                                        <h5>Thông tin sản phẩm</h5>
                                        <p>Pocket PC là một máy tính cầm tay, có nhiều tính năng giống như một chiếc PC hiện đại. 
                                            Những thiết bị nhỏ gọn tiện dụng này cho phép các cá nhân truy xuất và lưu trữ các tin 
                                            nhắn e-mail, tạo một hồ sơ liên lạc, điều phối các cuộc hẹn, lướt internet, trao đổi 
                                            tin nhắn văn bản và hơn thế nữa. Mỗi sản phẩm được dán nhãn là Máy tính bỏ túi phải 
                                            được trang bị phần mềm cụ thể để vận hành thiết bị và phải có màn hình cảm ứng và bàn 
                                            di chuột. Như trường hợp của bất kỳ sản phẩm công nghệ mới nào, chi phí của một chiếc 
                                            Pocket PC rất đáng kể trong thời gian phát hành sớm. Với giá khoảng 700 USD, người tiêu 
                                            dùng có thể mua một trong những máy tính bỏ túi hàng đầu vào năm 2003. Với khoảng 
                                            350,00 $ , một Pocket PC mới hiện có thể được mua.</p>
                                        <p>Như trường hợp của bất kỳ sản phẩm công nghệ mới nào, chi phí của một Pocket PC là đáng kể 
                                            trong thời gian phát hành sớm. Với số tiền khoảng 700 USD, người tiêu dùng có thể mua một 
                                            trong những máy tính bỏ túi hàng đầu vào năm 2003. Ngày nay, khách hàng nhận thấy rằng giá 
                                            cả đã trở nên hợp lý hơn nhiều khi tính mới không còn nữa. Với khoảng 350,00 đô la, một Pocket 
                                            PC mới hiện có thể được mua.</p>
                                    </div>
                                    <div class="product__details__tab__content__item">
                                        <h5>Chất liệu sử dụng</h5>
                                        <p>Polyester được coi là chất lượng thấp hơn do không có chất lượng tự nhiên của nó? Được làm từ chất 
                                            liệu tổng hợp, không tự nhiên như len. Những bộ quần áo bằng polyester dễ bị nhăn và nổi tiếng là 
                                            không thoáng khí. Những bộ quần áo polyester có xu hướng bóng hơn so với những bộ quần áo bằng len 
                                            và cotton, điều này có thể khiến bộ quần áo trông rẻ tiền. Kết cấu của nhung sang trọng và thoáng khí. 
                                            Velvet là một lựa chọn tuyệt vời cho áo khoác dạ tiệc và có thể mặc quanh năm.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Details Section End -->

<!-- Related Section Begin -->
<section class="related spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="related-title">Sản phẩm liên quan</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product-1.jpg">
                        <span class="label">Mới</span>
                        <ul class="product__hover">
                            <li><a href="#"><img src="${url}/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="${url}/img/icon/compare.png" alt=""> <span>So sánh</span></a></li>
                            <li><a href="#"><img src="${url}/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6>Piqué Biker Jacket</h6>
                        <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                        <div class="rating">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5>$67.24</h5>
                        <div class="product__color__select">
                            <label for="pc-1">
                                <input type="radio" id="pc-1">
                            </label>
                            <label class="active black" for="pc-2">
                                <input type="radio" id="pc-2">
                            </label>
                            <label class="grey" for="pc-3">
                                <input type="radio" id="pc-3">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product-2.jpg">
                        <ul class="product__hover">
                            <li><a href="#"><img src="${url}/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="${url}/img/icon/compare.png" alt=""> <span>So sánh</span></a></li>
                            <li><a href="#"><img src="${url}/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6>Piqué Biker Jacket</h6>
                        <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                        <div class="rating">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5>$67.24</h5>
                        <div class="product__color__select">
                            <label for="pc-4">
                                <input type="radio" id="pc-4">
                            </label>
                            <label class="active black" for="pc-5">
                                <input type="radio" id="pc-5">
                            </label>
                            <label class="grey" for="pc-6">
                                <input type="radio" id="pc-6">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                <div class="product__item sale">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product-3.jpg">
                        <span class="label">Giảm giá</span>
                        <ul class="product__hover">
                            <li><a href="#"><img src="${url}/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="${url}/img/icon/compare.png" alt=""> <span>So sánh</span></a></li>
                            <li><a href="#"><img src="${url}/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6>Multi-pocket Chest Bag</h6>
                        <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5>$43.48</h5>
                        <div class="product__color__select">
                            <label for="pc-7">
                                <input type="radio" id="pc-7">
                            </label>
                            <label class="active black" for="pc-8">
                                <input type="radio" id="pc-8">
                            </label>
                            <label class="grey" for="pc-9">
                                <input type="radio" id="pc-9">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-sm-6">
                <div class="product__item">
                    <div class="product__item__pic set-bg" data-setbg="${url}/img/product/product-4.jpg">
                        <ul class="product__hover">
                            <li><a href="#"><img src="${url}/img/icon/heart.png" alt=""></a></li>
                            <li><a href="#"><img src="${url}/img/icon/compare.png" alt=""> <span>So sánh</span></a></li>
                            <li><a href="#"><img src="${url}/img/icon/search.png" alt=""></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6>Diagonal Textured Cap</h6>
                        <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                        <div class="rating">
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h5>$60.9</h5>
                        <div class="product__color__select">
                            <label for="pc-10">
                                <input type="radio" id="pc-10">
                            </label>
                            <label class="active black" for="pc-11">
                                <input type="radio" id="pc-11">
                            </label>
                            <label class="grey" for="pc-12">
                                <input type="radio" id="pc-12">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Section End -->

<%@ include file="footer.jsp" %>