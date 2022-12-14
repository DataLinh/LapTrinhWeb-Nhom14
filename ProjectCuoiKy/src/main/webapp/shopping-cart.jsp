<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Male_Fashion Template">
<meta name="keywords" content="Male_Fashion, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Project nhóm 14</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<section class="breadcrumb-option">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb__text">
					<h4>Giỏ hàng</h4>
					<div class="breadcrumb__links">
						<a href="./index.jsp">Trang chủ</a> <a href="./shop.jsp">Cửa
							hàng</a> <span>Giỏ hàng</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="shopping__cart__table">
					<table>
						<thead>
							<tr>
								<th>Sản phẩm</th>
								<th>Số lượng</th>
								<th>Tổng tiền</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="product__cart__item">
									<div class="product__cart__item__pic">
										<img src="img/shopping-cart/cart-1.jpg" alt="">
									</div>
									<div class="product__cart__item__text">
										<h6>T-shirt Contrast Pocket</h6>
										<h5>$98.49</h5>
									</div>
								</td>
								<td class="quantity__item">
									<div class="quantity">
										<div class="pro-qty-2">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="cart__price">$ 30.00</td>
								<td class="cart__close"><i class="fa fa-close"></i></td>
							</tr>
							<tr>
								<td class="product__cart__item">
									<div class="product__cart__item__pic">
										<img src="img/shopping-cart/cart-2.jpg" alt="">
									</div>
									<div class="product__cart__item__text">
										<h6>Diagonal Textured Cap</h6>
										<h5>$98.49</h5>
									</div>
								</td>
								<td class="quantity__item">
									<div class="quantity">
										<div class="pro-qty-2">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="cart__price">$ 32.50</td>
								<td class="cart__close"><i class="fa fa-close"></i></td>
							</tr>
							<tr>
								<td class="product__cart__item">
									<div class="product__cart__item__pic">
										<img src="img/shopping-cart/cart-3.jpg" alt="">
									</div>
									<div class="product__cart__item__text">
										<h6>Basic Flowing Scarf</h6>
										<h5>$98.49</h5>
									</div>
								</td>
								<td class="quantity__item">
									<div class="quantity">
										<div class="pro-qty-2">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="cart__price">$ 47.00</td>
								<td class="cart__close"><i class="fa fa-close"></i></td>
							</tr>
							<tr>
								<td class="product__cart__item">
									<div class="product__cart__item__pic">
										<img src="img/shopping-cart/cart-4.jpg" alt="">
									</div>
									<div class="product__cart__item__text">
										<h6>Basic Flowing Scarf</h6>
										<h5>$98.49</h5>
									</div>
								</td>
								<td class="quantity__item">
									<div class="quantity">
										<div class="pro-qty-2">
											<input type="text" value="1">
										</div>
									</div>
								</td>
								<td class="cart__price">$ 30.00</td>
								<td class="cart__close"><i class="fa fa-close"></i></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="continue__btn">
							<a href="#">Tiếp tục mua sắm</a>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6">
						<div class="continue__btn update__btn">
							<a href="#"><i class="fa fa-spinner"></i> Cập nhật đơn hàng</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="cart__discount">
					<h6>Mã giảm giá</h6>
					<form action="#">
						<input type="text" placeholder="Nhập mã tại đây">
						<button type="submit">Áp mã</button>
					</form>
				</div>
				<div class="cart__total">
					<h6>Tổng tiền giỏ hàng</h6>
					<ul>
						<li>Tạm tính <span>$ 169.50</span></li>
						<li>Tổng <span>$ 169.50</span></li>
					</ul>
					<a href="#" class="primary-btn">Mua hàng</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->
<%@ include file="footer.jsp"%>