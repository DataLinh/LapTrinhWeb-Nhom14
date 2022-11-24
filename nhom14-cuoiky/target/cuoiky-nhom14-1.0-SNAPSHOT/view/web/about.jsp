<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>

    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Về chúng tôi</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Trang chủ</a>
                            <span>Về chúng tôi</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section Begin -->
    <section class="about spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="about__pic">
                        <img src="${url}/img/about/about-us.jpg" alt="">
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="about__item">
                    <h4>Chúng tôi là ai ?</h4>
                    <p>Male Fashion là một thương hiệu thời trang Việt Nam dành cho nam giới. </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="about__item">
                    <h4>Chúng tôi có những gì ?</h4>
                    <p>Không chỉ với áo thun, Male Fashion có tất cả các mặc hàng thời trang cần thiết. 
                        Chỉ cần lượn nhẹ một vòng bạn sẽ trang bị đủ từ đầu đến chân, từ trong ra ngoài,
                        cho đến phụ kiện đi kèm phù hợp với mọi nhu cầu: tiệc tùng, lễ hội, du lịch,
                        đến trường hoặc đi làm..v.v..
                    </p>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="about__item">
                    <h4>Tại sao nên chọn chúng tôi?</h4>
                    <p>
                        Nếu bạn đang tìm kiếm một thương hiệu thời trang dành cho nam giới, thì
                        đáng để chọn nhà cung cấp của bạn một cách cẩn thận.
                        Với thương hiệu quần áo của tôi, tất cả mọi thứ về sản phẩm, 
                        chất lượng, dịch vụ và hỗ trợ tốt nhất có thể - được đảm bảo!
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="testimonial__text">
                    <span class="icon_quotations"></span>
                    <p>Dù đi chơi hay đi làm, sản phẩm từ Male Fashion luôn là lựa chọn hàng đầu của tôi !!!
                    </p>
                    <div class="testimonial__author">
                        <div class="testimonial__author__pic">
                            <img src="${url}/img/about/testimonial-author.jpg" alt="">
                        </div>
                        <div class="testimonial__author__text">
                            <h5>Augusta Schultz</h5>
                            <p>Nhà thiết kết thời trang</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="testimonial__pic set-bg" data-setbg="${url}/img/about/testimonial-pic.jpg"></div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Counter Section Begin -->
<section class="counter spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <div class="counter__item__number">
                        <h2 class="cn_num">102</h2>
                    </div>
                    <span>Khách hàng<br /></span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <div class="counter__item__number">
                        <h2 class="cn_num">30</h2>
                    </div>
                    <span>Loại sản phẩm</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <div class="counter__item__number">
                        <h2 class="cn_num">102</h2>
                    </div>
                    <span>Quốc gia</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter__item">
                    <div class="counter__item__number">
                        <h2 class="cn_num">98</h2>
                        <strong>%</strong>
                    </div>
                    <span>Khách hàng yêu thích</span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Counter Section End -->

<!-- Team Section Begin -->
<section class="team spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>ĐỘI NGŨ CỦA CHÚNG TÔI</span>
                    <h2>Gặp đội của chúng tôi</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="team__item">
                    <img src="${url}/img/about/team-1.jpg" alt="">
                    <h4>John Smith</h4>
                    <span>Nhà thiết kết thời trang</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="team__item">
                    <img src="${url}/img/about/team-2.jpg" alt="">
                    <h4>Christine Wise</h4>
                    <span>Giám đốc điều hành</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="team__item">
                    <img src="${url}/img/about/team-3.jpg" alt="">
                    <h4>Sean Robbins</h4>
                    <span>Quản lý</span>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="team__item">
                    <img src="${url}/img/about/team-4.jpg" alt="">
                    <h4>Lucy Myers</h4>
                    <span>Người vận chuyển</span>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Team Section End -->

<!-- Client Section Begin -->
<section class="clients spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <span>Nhà đồng hành</span>
                    <h2>Những khách hàng yêu thích</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-1.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-2.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-3.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-4.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-5.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-6.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-7.png" alt=""></a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-4 col-6">
                <a href="#" class="client__item"><img src="${url}/img/clients/client-8.png" alt=""></a>
            </div>
        </div>
    </div>
</section>
<!-- Client Section End -->
<%@ include file="footer.jsp" %>