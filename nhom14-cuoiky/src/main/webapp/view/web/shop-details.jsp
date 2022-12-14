<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
<c:set var="items" value="${categories}" scope="request" />
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
                                <div class="product__thumb__pic set-bg" data-setbg="${url}/${p.getImage()}">
                                </div>
                            </a>
                        </li>
                        <%--                        <li class="nav-item">--%>
                        <%--                            <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">--%>
                        <%--                                <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-2.png">--%>
                        <%--                                </div>--%>
                        <%--                            </a>--%>
                        <%--                        </li>--%>
                        <%--                        <li class="nav-item">--%>
                        <%--                            <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">--%>
                        <%--                                <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-3.png">--%>
                        <%--                                </div>--%>
                        <%--                            </a>--%>
                        <%--                        </li>--%>
                        <%--                        <li class="nav-item">--%>
                        <%--                            <a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab">--%>
                        <%--                                <div class="product__thumb__pic set-bg" data-setbg="${url}/img/shop-details/thumb-4.png">--%>
                        <%--                                    <i class="fa fa-play"></i>--%>
                        <%--                                </div>--%>
                        <%--                            </a>--%>
                        <%--                        </li>--%>
                    </ul>
                </div>
                <div class="col-lg-6 col-md-9">
                    <div class="tab-content">
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="product__details__pic__item">
                                <img src="${url}/${product.getImage()}" alt="">
                            </div>
                        </div>
                        <%--                        <div class="tab-pane" id="tabs-2" role="tabpanel">--%>
                        <%--                            <div class="product__details__pic__item">--%>
                        <%--                                <img src="${url}/img/shop-details/product-big-3.png" alt="">--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                        <div class="tab-pane" id="tabs-3" role="tabpanel">--%>
                        <%--                            <div class="product__details__pic__item">--%>
                        <%--                                <img src="${url}/img/shop-details/product-big.png" alt="">--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <%--                        <div class="tab-pane" id="tabs-4" role="tabpanel">--%>
                        <%--                            <div class="product__details__pic__item">--%>
                        <%--                                <img src="${url}/img/shop-details/product-big-4.png" alt="">--%>
                        <%--                                <a href="https://www.youtube.com/watch?v=8PJ3_p7VqHw&list=RD8PJ3_p7VqHw&start_radio=1" class="video-popup"><i class="fa fa-play"></i></a>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
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
                        <h4>${product.getTitle()}</h4>
                        <h4 data-type="money">${product.price}</h4>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        <h3>M?? t???</h3>
                        <p>${product.getDescription()}</p>
                        <%--                        <div class="product__details__option">--%>
                        <%--                            <div class="product__details__option__size">--%>
                        <%--                                <span>K??ch c???:</span>--%>
                        <%--                                <label for="xxl">xxl--%>
                        <%--                                    <input type="radio" id="xxl">--%>
                        <%--                                </label>--%>
                        <%--                                <label class="active" for="xl">xl--%>
                        <%--                                    <input type="radio" id="xl">--%>
                        <%--                                </label>--%>
                        <%--                                <label for="l">l--%>
                        <%--                                    <input type="radio" id="l">--%>
                        <%--                                </label>--%>
                        <%--                                <label for="sm">s--%>
                        <%--                                    <input type="radio" id="sm">--%>
                        <%--                                </label>--%>
                        <%--                            </div>--%>
                        <%--                            <div class="product__details__option__color">--%>
                        <%--                                <span>M??u s???c:</span>--%>
                        <%--                                <label class="c-1" for="sp-1">--%>
                        <%--                                    <input type="radio" id="sp-1">--%>
                        <%--                                </label>--%>
                        <%--                                <label class="c-2" for="sp-2">--%>
                        <%--                                    <input type="radio" id="sp-2">--%>
                        <%--                                </label>--%>
                        <%--                                <label class="c-3" for="sp-3">--%>
                        <%--                                    <input type="radio" id="sp-3">--%>
                        <%--                                </label>--%>
                        <%--                                <label class="c-4" for="sp-4">--%>
                        <%--                                    <input type="radio" id="sp-4">--%>
                        <%--                                </label>--%>
                        <%--                                <label class="c-9" for="sp-9">--%>
                        <%--                                    <input type="radio" id="sp-9">--%>
                        <%--                                </label>--%>
                        <%--                            </div>--%>
                        <%--                        </div>--%>
                        <div class="product__details__cart__option">

                            <form action="GioHang" method="post" >                                            
                                            <input type="hidden" name="action" 
                                                   value="add">               
                                            <input type="hidden" name="productId" 
                                                   value="${product.id}">
                                            <input type="submit"  class="btn btn-outline-danger" value="+ Th??m v??o gi??? h??ng">
                                        </form> 
                        </div>
                                                <div class="product__details__btns__option">
                                                    
<!--                                                <iframe name="votar" style="display:none;"></iframe>-->
                                                <form id="form1" action="SanPhamYeuThich" method="post" target="votar">
                                                    <input type="hidden" id="action" name="action" value="AddFavoriteProduct">
                                                    <input type="hidden" id="idProduct" name="idProduct" value="${product.id}">
                                                </form>
                                                    
                                                <a href="#" onclick="document.getElementById('form1').submit();"><i class="fa fa-heart"></i> Th??m v??o danh m???c y??u th??ch</a>
                                                </div>
                        <div class="product__details__last__option">
                            <h5><span>Thanh to??n tr???c tuy???n an to??n</span></h5>
                            <img src="${url}/img/shop-details/details-payment.png" alt="">
                            <ul>
                                <li><span>SKU:</span> ${product.id}</li>
<%--                                <li><span>Danh m???c:</span> ${product.getCategory().getCategoryName()}</li>--%>
                                <%--                                <li><span>Th???:</span> Qu???n ??o</li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <%--            <div class="row">--%>
            <%--                <div class="col-lg-12">--%>
            <%--                    <div class="product__details__tab">--%>
            <%--                        <ul class="nav nav-tabs" role="tablist">--%>
            <%--                            <li class="nav-item">--%>
            <%--                                <a class="nav-link active" data-toggle="tab" href="#tabs-5"--%>
            <%--                                   role="tab">M?? t???</a>--%>
            <%--                            </li>--%>
            <%--                            <li class="nav-item">--%>
            <%--                                <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">Nh???n x??t c???a kh??ch h??ng (5)</a>--%>
            <%--                            </li>--%>
            <%--                            <li class="nav-item">--%>
            <%--                                <a class="nav-link" data-toggle="tab" href="#tabs-7" role="tab">Th??ng tin th??m</a>--%>
            <%--                            </li>--%>
            <%--                        </ul>--%>
            <%--                        <div class="tab-content">--%>
            <%--                            <div class="tab-pane active" id="tabs-5" role="tabpanel">--%>
            <%--                                <div class="product__details__tab__content">--%>

            <%--                                    <div class="product__details__tab__content__item">--%>
            <%--                                        <h5>Th??ng tin s???n ph???m</h5>--%>
            <%--                                        <p>Pocket PC l?? m???t m??y t??nh c???m tay, c?? nhi???u t??nh n??ng gi???ng nh?? m???t chi???c PC hi???n ?????i. --%>
            <%--                                            Nh???ng thi???t b??? nh??? g???n ti???n d???ng n??y cho ph??p c??c c?? nh??n truy xu???t v?? l??u tr??? c??c tin --%>
            <%--                                            nh???n e-mail, t???o m???t h??? s?? li??n l???c, ??i???u ph???i c??c cu???c h???n, l?????t internet, trao ?????i --%>
            <%--                                            tin nh???n v??n b???n v?? h??n th??? n???a. M???i s???n ph???m ???????c d??n nh??n l?? M??y t??nh b??? t??i ph???i --%>
            <%--                                            ???????c trang b??? ph???n m???m c??? th??? ????? v???n h??nh thi???t b??? v?? ph???i c?? m??n h??nh c???m ???ng v?? b??n --%>
            <%--                                            di chu???t. Nh?? tr?????ng h???p c???a b???t k??? s???n ph???m c??ng ngh??? m???i n??o, chi ph?? c???a m???t chi???c --%>
            <%--                                            Pocket PC r???t ????ng k??? trong th???i gian ph??t h??nh s???m. V???i gi?? kho???ng 700 USD, ng?????i ti??u --%>
            <%--                                            d??ng c?? th??? mua m???t trong nh???ng m??y t??nh b??? t??i h??ng ?????u v??o n??m 2003. V???i kho???ng --%>
            <%--                                            350,00 $ , m???t Pocket PC m???i hi???n c?? th??? ???????c mua.</p>--%>
            <%--                                        <p>Nh?? tr?????ng h???p c???a b???t k??? s???n ph???m c??ng ngh??? m???i n??o, chi ph?? c???a m???t Pocket PC l?? ????ng k??? --%>
            <%--                                            trong th???i gian ph??t h??nh s???m. V???i s??? ti???n kho???ng 700 USD, ng?????i ti??u d??ng c?? th??? mua m???t --%>
            <%--                                            trong nh???ng m??y t??nh b??? t??i h??ng ?????u v??o n??m 2003. Ng??y nay, kh??ch h??ng nh???n th???y r???ng gi?? --%>
            <%--                                            c??? ???? tr??? n??n h???p l?? h??n nhi???u khi t??nh m???i kh??ng c??n n???a. V???i kho???ng 350,00 ???? la, m???t Pocket --%>
            <%--                                            PC m???i hi???n c?? th??? ???????c mua.</p>--%>
            <%--                                    </div>--%>
            <%--                                    <div class="product__details__tab__content__item">--%>
            <%--                                        <h5>Ch???t li???u s??? d???ng</h5>--%>
            <%--                                        <p>Polyester ???????c coi l?? ch???t l?????ng th???p h??n do kh??ng c?? ch???t l?????ng t??? nhi??n c???a n??? ???????c l??m t??? ch???t --%>
            <%--                                            li???u t???ng h???p, kh??ng t??? nhi??n nh?? len. Nh???ng b??? qu???n ??o b???ng polyester d??? b??? nh??n v?? n???i ti???ng l?? --%>
            <%--                                            kh??ng tho??ng kh??. Nh???ng b??? qu???n ??o polyester c?? xu h?????ng b??ng h??n so v???i nh???ng b??? qu???n ??o b???ng len --%>
            <%--                                            v?? cotton, ??i???u n??y c?? th??? khi???n b??? qu???n ??o tr??ng r??? ti???n. K???t c???u c???a nhung sang tr???ng v?? tho??ng kh??. --%>
            <%--                                            Velvet l?? m???t l???a ch???n tuy???t v???i cho ??o kho??c d??? ti???c v?? c?? th??? m???c quanh n??m.</p>--%>
            <%--                                    </div>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>
            <%--                            <div class="tab-pane" id="tabs-6" role="tabpanel">--%>
            <%--                                <div class="product__details__tab__content">--%>
            <%--                                    <div class="product__details__tab__content__item">--%>
            <%--                                        <h5>Th??ng tin s???n ph???m</h5>--%>
            <%--                                        <p>Pocket PC l?? m???t m??y t??nh c???m tay, c?? nhi???u t??nh n??ng gi???ng nh?? m???t chi???c PC hi???n ?????i. --%>
            <%--                                            Nh???ng thi???t b??? nh??? g???n ti???n d???ng n??y cho ph??p c??c c?? nh??n truy xu???t v?? l??u tr??? c??c tin --%>
            <%--                                            nh???n e-mail, t???o m???t h??? s?? li??n l???c, ??i???u ph???i c??c cu???c h???n, l?????t internet, trao ?????i --%>
            <%--                                            tin nh???n v??n b???n v?? h??n th??? n???a. M???i s???n ph???m ???????c d??n nh??n l?? M??y t??nh b??? t??i ph???i --%>
            <%--                                            ???????c trang b??? ph???n m???m c??? th??? ????? v???n h??nh thi???t b??? v?? ph???i c?? m??n h??nh c???m ???ng v?? b??n --%>
            <%--                                            di chu???t. Nh?? tr?????ng h???p c???a b???t k??? s???n ph???m c??ng ngh??? m???i n??o, chi ph?? c???a m???t chi???c --%>
            <%--                                            Pocket PC r???t ????ng k??? trong th???i gian ph??t h??nh s???m. V???i gi?? kho???ng 700 USD, ng?????i ti??u --%>
            <%--                                            d??ng c?? th??? mua m???t trong nh???ng m??y t??nh b??? t??i h??ng ?????u v??o n??m 2003. V???i kho???ng --%>
            <%--                                            350,00 $ , m???t Pocket PC m???i hi???n c?? th??? ???????c mua.</p>--%>
            <%--                                        <p>Nh?? tr?????ng h???p c???a b???t k??? s???n ph???m c??ng ngh??? m???i n??o, chi ph?? c???a m???t Pocket PC l?? ????ng k??? --%>
            <%--                                            trong th???i gian ph??t h??nh s???m. V???i s??? ti???n kho???ng 700 USD, ng?????i ti??u d??ng c?? th??? mua m???t --%>
            <%--                                            trong nh???ng m??y t??nh b??? t??i h??ng ?????u v??o n??m 2003. Ng??y nay, kh??ch h??ng nh???n th???y r???ng gi?? --%>
            <%--                                            c??? ???? tr??? n??n h???p l?? h??n nhi???u khi t??nh m???i kh??ng c??n n???a. V???i kho???ng 350,00 ???? la, m???t Pocket --%>
            <%--                                            PC m???i hi???n c?? th??? ???????c mua.</p>--%>
            <%--                                    </div>--%>
            <%--                                    <div class="product__details__tab__content__item">--%>
            <%--                                        <h5>Ch???t li???u s??? d???ng</h5>--%>
            <%--                                        <p>Polyester ???????c coi l?? ch???t l?????ng th???p h??n do kh??ng c?? ch???t l?????ng t??? nhi??n c???a n??? ???????c l??m t??? ch???t --%>
            <%--                                            li???u t???ng h???p, kh??ng t??? nhi??n nh?? len. Nh???ng b??? qu???n ??o b???ng polyester d??? b??? nh??n v?? n???i ti???ng l?? --%>
            <%--                                            kh??ng tho??ng kh??. Nh???ng b??? qu???n ??o polyester c?? xu h?????ng b??ng h??n so v???i nh???ng b??? qu???n ??o b???ng len --%>
            <%--                                            v?? cotton, ??i???u n??y c?? th??? khi???n b??? qu???n ??o tr??ng r??? ti???n. K???t c???u c???a nhung sang tr???ng v?? tho??ng kh??. --%>
            <%--                                            Velvet l?? m???t l???a ch???n tuy???t v???i cho ??o kho??c d??? ti???c v?? c?? th??? m???c quanh n??m.</p>--%>
            <%--                                    </div>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>
            <%--                            <div class="tab-pane" id="tabs-7" role="tabpanel">--%>
            <%--                                <div class="product__details__tab__content">--%>
            <%--                                    <div class="product__details__tab__content__item">--%>
            <%--                                        <h5>Th??ng tin s???n ph???m</h5>--%>
            <%--                                        <p>Pocket PC l?? m???t m??y t??nh c???m tay, c?? nhi???u t??nh n??ng gi???ng nh?? m???t chi???c PC hi???n ?????i. --%>
            <%--                                            Nh???ng thi???t b??? nh??? g???n ti???n d???ng n??y cho ph??p c??c c?? nh??n truy xu???t v?? l??u tr??? c??c tin --%>
            <%--                                            nh???n e-mail, t???o m???t h??? s?? li??n l???c, ??i???u ph???i c??c cu???c h???n, l?????t internet, trao ?????i --%>
            <%--                                            tin nh???n v??n b???n v?? h??n th??? n???a. M???i s???n ph???m ???????c d??n nh??n l?? M??y t??nh b??? t??i ph???i --%>
            <%--                                            ???????c trang b??? ph???n m???m c??? th??? ????? v???n h??nh thi???t b??? v?? ph???i c?? m??n h??nh c???m ???ng v?? b??n --%>
            <%--                                            di chu???t. Nh?? tr?????ng h???p c???a b???t k??? s???n ph???m c??ng ngh??? m???i n??o, chi ph?? c???a m???t chi???c --%>
            <%--                                            Pocket PC r???t ????ng k??? trong th???i gian ph??t h??nh s???m. V???i gi?? kho???ng 700 USD, ng?????i ti??u --%>
            <%--                                            d??ng c?? th??? mua m???t trong nh???ng m??y t??nh b??? t??i h??ng ?????u v??o n??m 2003. V???i kho???ng --%>
            <%--                                            350,00 $ , m???t Pocket PC m???i hi???n c?? th??? ???????c mua.</p>--%>
            <%--                                        <p>Nh?? tr?????ng h???p c???a b???t k??? s???n ph???m c??ng ngh??? m???i n??o, chi ph?? c???a m???t Pocket PC l?? ????ng k??? --%>
            <%--                                            trong th???i gian ph??t h??nh s???m. V???i s??? ti???n kho???ng 700 USD, ng?????i ti??u d??ng c?? th??? mua m???t --%>
            <%--                                            trong nh???ng m??y t??nh b??? t??i h??ng ?????u v??o n??m 2003. Ng??y nay, kh??ch h??ng nh???n th???y r???ng gi?? --%>
            <%--                                            c??? ???? tr??? n??n h???p l?? h??n nhi???u khi t??nh m???i kh??ng c??n n???a. V???i kho???ng 350,00 ???? la, m???t Pocket --%>
            <%--                                            PC m???i hi???n c?? th??? ???????c mua.</p>--%>
            <%--                                    </div>--%>
            <%--                                    <div class="product__details__tab__content__item">--%>
            <%--                                        <h5>Ch???t li???u s??? d???ng</h5>--%>
            <%--                                        <p>Polyester ???????c coi l?? ch???t l?????ng th???p h??n do kh??ng c?? ch???t l?????ng t??? nhi??n c???a n??? ???????c l??m t??? ch???t --%>
            <%--                                            li???u t???ng h???p, kh??ng t??? nhi??n nh?? len. Nh???ng b??? qu???n ??o b???ng polyester d??? b??? nh??n v?? n???i ti???ng l?? --%>
            <%--                                            kh??ng tho??ng kh??. Nh???ng b??? qu???n ??o polyester c?? xu h?????ng b??ng h??n so v???i nh???ng b??? qu???n ??o b???ng len --%>
            <%--                                            v?? cotton, ??i???u n??y c?? th??? khi???n b??? qu???n ??o tr??ng r??? ti???n. K???t c???u c???a nhung sang tr???ng v?? tho??ng kh??. --%>
            <%--                                            Velvet l?? m???t l???a ch???n tuy???t v???i cho ??o kho??c d??? ti???c v?? c?? th??? m???c quanh n??m.</p>--%>
            <%--                                    </div>--%>
            <%--                                </div>--%>
            <%--                            </div>--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
        </div>
    </div>
</section>
<!-- Shop Details Section End -->

<!-- Related Section Begin -->
<section class="related spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="related-title">S???n ph???m li??n quan</h3>
            </div>
        </div>
        <div class="row">
            <c:forEach var="p" items="${relatedProducts}">
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="product__item">
                        <div class="product__item__pic set-bg" >
                            <a href="<%=request.getContextPath()%>/ChiTiet?id=${p.getId()}">
                                <img src="${url}/${p.getImage()}"/>
                            </a>
                                <%--                            <ul class="product__hover">--%>
                                <%--                                <li> <a>--%>
                                <%--                                    <iframe name="votar" style="display:none;"></iframe>--%>
                                <%--                                    <form action="SanPhamYeuThich" method="post" target="votar">--%>
                                <%--                                        <input type="hidden" id="action" name="action" value="AddFavoriteProduct">--%>
                                <%--                                        <input type="hidden" id="idProduct" name="idProduct" value="${p.id}">--%>
                                <%--                                        <input type="image" class="heart" src="${url}/img/icon/heart.png" alt="submit" style="background: #ffffff;padding: 10px;display: inline-block;">--%>
                                <%--                                    </form>--%>
                                <%--                                    <span>Y??u th??ch</span>--%>
                                <%--                                </a> </li>--%>
                                <%--                                <li><a href="#"><img src="${url}/img/icon/compare.png" alt=""> <span>So s??nh</span></a>--%>
                                <%--                                </li>--%>
                                <%--                                <li><a href="#"><img src="${url}/img/icon/search.png" alt=""></a></li>--%>
                                <%--                            </ul>--%>
                        </div>
                        <div class="product__item__text">
                            <h6>${p.getTitle()}</h6>
                            <form action="GioHang" method="post" >
                                <input type="hidden" name="action"
                                       value="add">
                                <input type="hidden" name="productId"
                                       value="${p.id}">
                                <input type="submit"  class="btn btn-outline-danger" value="+ Th??m v??o gi??? h??ng">
                            </form>

                            <div class="rating">
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                            <h5 data-type="money" data-type="money">${p.getPrice()}</h5>
                                <%--                            <div class="product__color__select">--%>
                                <%--                                <label for="pc-40">--%>
                                <%--                                    <input type="radio" id="pc-40">--%>
                                <%--                                </label>--%>
                                <%--                                <label class="active black" for="pc-41">--%>
                                <%--                                    <input type="radio" id="pc-41">--%>
                                <%--                                </label>--%>
                                <%--                                <label class="grey" for="pc-42">--%>
                                <%--                                    <input type="radio" id="pc-42">--%>
                                <%--                                </label>--%>
                                <%--                            </div>--%>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Related Section End -->

<%@ include file="footer.jsp" %>
<script>

    document.querySelectorAll('[data-type="money"]').forEach(item => {

        item.innerHTML = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'vnd'}).format(item.innerHTML);
    })
</script>