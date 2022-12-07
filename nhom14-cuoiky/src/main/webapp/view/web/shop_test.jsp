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
                        <h4></h4>
                        <div class="breadcrumb__links">
                            <a href="./index.jsp">Trang chủ</a>
                            <span>Cửa hàng</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Cửa hàng Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Tìm kiếm ..." name="txtSearch" value="${txtSearch}">
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
                                                    <c:forEach items="${categories}" var="c">
                                                        <li><a href="<%=request.getContextPath()%>/ViewProductController?price=${price}&txtSearch=${txtSearch}&categoryID=${c.getId()}&sort=${sort}">${c.getCategoryName()}</a></li>
                                                    </c:forEach>
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
                                                    <li>
                                                        <a href="<%=request.getContextPath()%>/ViewProductController?price=${1}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${sort}">
                                                        0 - 100.000
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<%=request.getContextPath()%>/ViewProductController?price=${2}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${sort}">
                                                            100.000 - 200.000
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="<%=request.getContextPath()%>/ViewProductController?price=${3}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${sort}">
                                                            250.000+
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="shop__product__option">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__left">
                                    <p>Hiển thị 213 trong 400 kết quả</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="shop__product__option__right">
                                    <p>Sắp xếp</p>
                                    <select>
                                        <option value="" href="<%=request.getContextPath()%>/ViewProductController?price=${price}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${0}">Mới nhất</option>
                                        <option value="" href="<%=request.getContextPath()%>/ViewProductController?price=${price}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${1}">Giá thấp đến cao</option>
                                        <option value="" href="<%=request.getContextPath()%>/ViewProductController?price=${price}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${-1}">Giá cao đến thấp</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${products}" var="p">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${url}/${p.getImage()}">
                                        <ul class="product__hover">
                                            <li><a href="#"><img src="${url}/img/icon/heart.png" alt=""></a></li>
                                            <li><a href="#"><img src="${url}/img/icon/compare.png" alt=""> <span>So sánh</span></a>
                                            </li>
                                            <li><a href="#"><img src="${url}/img/icon/search.png" alt=""></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__item__text">
                                        <h6>${p.getTitle()}</h6>
                                        <a href="#" class="add-cart">+ Thêm vào giỏ hàng</a>
                                        <div class="rating">
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                            <i class="fa fa-star-o"></i>
                                        </div>
                                        <h5 data-type="money">${p.getPrice()}</h5>
                                        <div class="product__color__select">
                                            <label for="pc-40">
                                                <input type="radio" id="pc-40">
                                            </label>
                                            <label class="active black" for="pc-41">
                                                <input type="radio" id="pc-41">
                                            </label>
                                            <label class="grey" for="pc-42">
                                                <input type="radio" id="pc-42">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__pagination">
                            <c:forEach begin="${1}" end="${numberPage}" var="i">
                                <a ${i == page?'class="active"':""} href="<%=request.getContextPath()%>/ViewProductController?price=${1}&txtSearch=${txtSearch}&categoryID=${categoryID}&sort=${sort}&page=${i}">${i}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Cửa hàng Section End -->
<%@ include file="footer.jsp" %>
<script>

    document.querySelectorAll('[data-type="money"]').forEach(item => {

        item.innerHTML = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'vnd'}).format(item.innerHTML);
    })
</script>