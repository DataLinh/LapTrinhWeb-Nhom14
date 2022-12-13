<%-- 
    Document   : favorite-products
    Created on : Nov 27, 2022, 9:36:37 PM
    Author     : son
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:url value="view/web" var="url"></c:url>
<body>
    <div class="shopping__cart__table">
        <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Sản phẩm yêu thích</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Trang chủ</a>
                            <a href="./shop.jsp">Cửa hàng</a>
                            <span>Sản phẩm yêu thích</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
    <h2 style="text-align:center"> Sản phẩm yêu thích</h2>
    <section class ="shop spad">
        <div class = "container">
            <div class ="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Tìm kiếm ...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Danh mục</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="#">Nam (20)</a></li>
                                                    <li><a href="#">Nữ (20)</a></li>
                                                    <li><a href="#">Túi (20)</a></li>
                                                    <li><a href="#">Quần áo (20)</a></li>
                                                    <li><a href="#">Giày (20)</a></li>
                                                    <li><a href="#">Trang sức (20)</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseTwo">Branding</a>
                                    </div>
                                    <div id="collapseTwo" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__brand">
                                                <ul>
                                                    <li><a href="#">Louis Vuitton</a></li>
                                                    <li><a href="#">Chanel</a></li>
                                                    <li><a href="#">Hermes</a></li>
                                                    <li><a href="#">Gucci</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Tìm giá</a>
                                    </div>
                                    <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <li><a href="#">$0.00 - $50.00</a></li>
                                                    <li><a href="#">$50.00 - $100.00</a></li>
                                                    <li><a href="#">$100.00 - $150.00</a></li>
                                                    <li><a href="#">$150.00 - $200.00</a></li>
                                                    <li><a href="#">$200.00 - $250.00</a></li>
                                                    <li><a href="#">250.00+</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">Kích cỡ</a>
                                    </div>
                                    <div id="collapseFour" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__size">
                                                <label for="xs">xs
                                                    <input type="radio" id="xs">
                                                </label>
                                                <label for="sm">s
                                                    <input type="radio" id="sm">
                                                </label>
                                                <label for="md">m
                                                    <input type="radio" id="md">
                                                </label>
                                                <label for="xl">xl
                                                    <input type="radio" id="xl">
                                                </label>
                                                <label for="2xl">2xl
                                                    <input type="radio" id="2xl">
                                                </label>
                                                <label for="xxl">xxl
                                                    <input type="radio" id="xxl">
                                                </label>
                                                <label for="3xl">3xl
                                                    <input type="radio" id="3xl">
                                                </label>
                                                <label for="4xl">4xl
                                                    <input type="radio" id="4xl">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFive">Colors</a>
                                    </div>
                                    <div id="collapseFive" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__color">
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
                                                <label class="c-5" for="sp-5">
                                                    <input type="radio" id="sp-5">
                                                </label>
                                                <label class="c-6" for="sp-6">
                                                    <input type="radio" id="sp-6">
                                                </label>
                                                <label class="c-7" for="sp-7">
                                                    <input type="radio" id="sp-7">
                                                </label>
                                                <label class="c-8" for="sp-8">
                                                    <input type="radio" id="sp-8">
                                                </label>
                                                <label class="c-9" for="sp-9">
                                                    <input type="radio" id="sp-9">
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseSix">Thẻ</a>
                                    </div>
                                    <div id="collapseSix" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__tags">
                                                <a href="#">Sản phẩm</a>
                                                <a href="#">Túi</a>
                                                <a href="#">Giày</a>
                                                <a href="#">Thời trang</a>
                                                <a href="#">Quần áo</a>
                                                <a href="#">Nón</a>
                                                <a href="#">Trang sức</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
    </div>
                
         
<div class="col-lg-9">
    
        <table id="favorite__product_table">
            <thead>
                <tr></tr>
            </thead>
            <tbody>
                <c:forEach items="${products}" var="product">
                <tr> 
                   <td class="product__cart__item">
                        
                        <div class="product__cart__item__pic">
                            <img src="${url}/${product.image}" style="width: 108px; height: 108px">
                        </div>
                        <div class="product__cart__item__text">

                            <h6>${product.title}</h6>
                            <h5>${product.price} đ</h5>
                            <div class="rating">
                                <i class="fa fa-star" style = "color:#f7941d"></i>
                                <i class="fa fa-star" style = "color:#f7941d"></i>
                                <i class="fa fa-star" style = "color:#f7941d"></i>
                                <i class="fa fa-star" style = "color:#f7941d"></i>
                                <i class="fa fa-star-o"></i>
                            </div>
                        </div>
                    </td>
                    <td>
<!--                        <iframe name="votar" style="display:none;"></iframe>-->
                        <form id="FavoriteProduct${product.id}" action="SanPhamYeuThich" method="post" target="votar">
                            <input type="hidden" id="action" name="action" value="DeleteFavoriteProduct">
                            <input type="hidden" id="idProduct" name="idProduct" value="${product.id}">
                        </form>
                    </td>
                    <td style="text-align: center">
                        <form id="Cart${product.id}" action="GioHang" method="post">
                            <input type="hidden" id="action" name="action" value="add">
                            <input type="hidden" id="productId" name="productId" value="${product.id}">
                        </form>
                        <a href="#" onclick="document.getElementById('Cart${product.id}').submit();">
                            <img src="view/web/img/shopping-cart/add-to-cart.png" width ="38" height ="38" alt="alt"/>
                        </a>
                    </td>
                    
                    <td class="cart__close" style="text-align: center">
                        <button form="FavoriteProduct${product.id}" type="submit" class ="deleteBtn" style="border: none; background: border-box">
                            <i class="fa fa-close"></i>
                        </button>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>   
    
</div>
      
 
</div>    
        </div>
    </section> 
    <script>
        function deleteRow1(r) {
            var i = r.parentNode.parentNode.rowIndex;
            document.getElementById("favorite__product_table").deleteRow(i);
        }
    </script>
</body>

<%@ include file="footer.jsp" %>