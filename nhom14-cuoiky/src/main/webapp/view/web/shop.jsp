<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="view/web" var="url"></c:url>
<%--<jsp:include page="header.jsp"></jsp:include>--%>
<%--<c:url value="/" var="root"/>--%>
<%--<c:set var="scheme" value="${pageContext.request.scheme}"/>--%>
<%--<c:set var="serverName" value="${pageContext.request.serverName}"/>--%>
<%--<c:set var="serverPort" value="${pageContext.request.serverPort}"/>--%>

<%--Base URL: ${scheme}://${serverName}:${serverPort}--%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Male-Fashion | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="./assets/css/style.css" type="text/css">
</head>

<body>
<c:set var="items" value="${categories}" scope="request" />
<!-- Header Section Begin-->
<jsp:include page="header.jsp"></jsp:include>

<!-- Header Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__text">
                    <h4>Shop</h4>
                    <div class="breadcrumb__links">
                        <a href="./index.html">Home</a>
                        <span>Shop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shop Section Begin -->
<section class="shop spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="shop__sidebar">
                    <div class="shop__sidebar__search">
                        <form action="" method="get">

                            <input name="txtSearch" type="text" placeholder="Search..." value="${txtSearch}">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="shop__sidebar__accordion">
                        <div class="accordion" id="accordionExample">
                            <form action="" id="myForm">
                                <c:if test="${txtSearch!='' && txtSearch!=null }">
                                    <input name="txtSearch" type="hidden" value="${txtSearch}">
                                </c:if>

                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Sắp xếp</a>
                                    </div>
                                    <div id="collapsezero" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <input type="radio" id="Sprice1" onchange="submitForm()" name="sort" value="1" ${sort=='1'?'checked':''}>
                                                    <label for="Sprice1">Thấp đến cao</label><br>
                                                    <input type="radio" id="Sprice2" onchange="submitForm()" name="sort" value="-1" ${sort=='-1'?'checked':''}>
                                                    <label for="Sprice2">Cao đến thấp</label><br>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Thể loại</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <input type="radio" id="category" name="categoryID" value="${0}" onchange="submitForm()" checked >
                                                    <label for="category"> Tất cả</label><br>
                                                    <c:forEach items="${categories}" var="c">
                                                        <input type="radio" id="category" name="categoryID" value="${c.getId()}" onchange="submitForm()" ${categoryID==c.getId()?'checked':''}>
                                                        <label for="category"> ${c.getCategoryName()}</label><br>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseThree">Giá</a>
                                    </div>
                                    <div id="collapseThree" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__price">
                                                <ul>
                                                    <input type="radio" id="price0" name="price" value="0" onchange="submitForm()"  ${price=='0'?'checked':''}>
                                                    <label for="price1">Tất cả</label><br>
                                                    <input type="radio" id="price1" name="price" value="1" onchange="submitForm()"  ${price=='1'?'checked':''}>
                                                    <label for="price1">0 - 100.000</label><br>
                                                    <input type="radio" id="price2" name="price" value="2" onchange="submitForm()" ${price=='2'?'checked':''}>
                                                    <label for="price2">>100.000 - 250.000</label><br>
                                                    <input type="radio" id="price3" name="price" value="3" onchange="submitForm()" ${price=='3'?'checked':''}>
                                                    <label for="price3">>250.000+</label><br>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--                                <input type="submit" value="Submit">--%>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="shop__product__option">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="shop__product__option__left">
                                <p>${amount} Sản phẩm</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" id = "products">
                    <c:forEach items="${products}" var="p">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <a href="#">
                                    <div class="product__item__pic set-bg" <%--data-setbg="${url}/${p.getImage()}"--%>>
                                        <a href="<%=request.getContextPath()%>/shopDetails?id=${p.getId()}">
                                            <img src="${url}/${p.getImage()}">
                                        </a>
<%--                                        <ul class="product__hover">--%>
<%--                                            <li><a href="#">Xem chi tiết</a></li>--%>
<%--                                        </ul>--%>
                                    </div>
                                </a>
                                <div class="product__item__text">
                                    <h6>${p.getTitle()}</h6>
                                    <form action="GioHang" method="post" >
                                        <input type="hidden" name="action"
                                               value="add">
                                        <input type="hidden" name="productId"
                                               value="${p.id}">
                                        <input type="submit"  class="btn btn-outline-danger" value="+ Thêm vào giỏ hàng">
                                    </form>
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
                                <a ${i == page?'class="active"':""} href="<%=request.getContextPath()%>/shop?${queryString}&page=${i}">${i}</a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Shop Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp" />
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" name="txtSearch" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

<!-- Active menu -->
<script>
    document.getElementById('menu-shop').classList.add('active')
</script>
<script>
    function submitForm(){
        document.getElementById("myForm").submit();
    }
</script>

<!-- Js Plugins -->
<script src="./assets/js/jquery-3.3.1.min.js"></script>
<script src="./assets/js/bootstrap.min.js"></script>
<script src="./assets/js/jquery.nice-select.min.js"></script>
<script src="./assets/js/jquery.nicescroll.min.js"></script>
<script src="./assets/js/jquery.magnific-popup.min.js"></script>
<script src="./assets/js/jquery.countdown.min.js"></script>
<script src="./assets/js/jquery.slicknav.js"></script>
<script src="./assets/js/mixitup.min.js"></script>
<script src="./assets/js/owl.carousel.min.js"></script>
<script src="./assets/js/main.js"></script>
</body>

</html>