<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>
    <!-- Map Begin -->
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.479773049675!2d106.77141245045571!3d10.85106679223301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752774d7e357c3%3A0x7cc744cb226ad64!2zc-G7kSAxIMSQLiBWw7UgVsSDbiBOZ8OibiwgTGluaCBDaGnhu4N1LCBUaOG7pyDEkOG7qWMsIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1667029726121!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    <!-- Map End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="contact__text">
                        <div class="section-title">
                            <span>Thông tin</span>
                            <h2>Liên hệ chúng tôi</h2>
                            <p>Nếu bạn cần thêm thông tin góp ý gì, hãy liên hệ với tôi. Chúng tôi rất vui khi nhận được lời nhắn từ của bạn.  </p>
                        </div>
                        <ul>
                            <!--                        <li>
                                                        <h4>America</h4>
                                                        <p>195 E Parker Square Dr, Parker, CO 801 <br />+43 982-314-0958</p>
                                                    </li>-->
                            <li>
                                <h4>Việt Nam</h4>
                                <p>số 1 Đường Võ Văn Ngân, Linh Chiểu, Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam <br />0123456789</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <form action="#">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Tên">
                                </div>
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Email">
                                </div>
                                <div class="col-lg-12">
                                    <textarea placeholder="Lời nhắn"></textarea>
                                    <button type="submit" class="site-btn">Gửi tin nhắn</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

<%@ include file="footer.jsp" %>