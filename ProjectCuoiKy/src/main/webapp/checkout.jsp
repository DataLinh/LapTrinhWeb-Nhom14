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
					<h4>Điền thông tin</h4>
					<div class="breadcrumb__links">
						<a href="./index.jsp">Trang chủ</a> <a href="./shop.jsp">Cửa
							hàng</a> <span>Điền thông tin</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>


<!-- Checkout Section Begin -->
<section class="checkout spad">
	<div class="container">
		<div class="checkout__form">
			<form action="#">
				<div class="row">
					<div class="col-lg-8 col-md-6">
						<h6 class="coupon__code">
							<span class="icon_tag_alt"></span> Đã có mã giảm giá? <a href="#">
								Vui lòng nhấn vào đây</a>
						</h6>
						<h6 class="checkout__title">Chi tiết đơn hàng</h6>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Tên <span>*</span>
									</p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Họ<span>*</span>
									</p>
									<input type="text">
								</div>
							</div>
						</div>
						<div class="checkout__input">
							<p>
								Quốc gia<span>*</span>
							</p>
							<input type="text">
						</div>
						<div class="checkout__input">
							<p>
								Địa chỉ<span>*</span>
							</p>
							<input type="text"
								placeholder="1 Võ Văn Ngân, Phường Linh Chiểu, TP Thủ Đức, TP HCM"
								class="checkout__input__add"> <input type="text"
								placeholder="Đại học sư phạm kỹ thuật TP HCM">
						</div>
						<div class="checkout__input">
							<p>
								Thành phố<span>*</span>
							</p>
							<input type="text">
						</div>
						<div class="checkout__input">
							<p>
								Quận / Huyện<span>*</span>
							</p>
							<input type="text">
						</div>
						<div class="checkout__input">
							<p>
								Postcode / ZIP<span>*</span>
							</p>
							<input type="text">
						</div>
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Số điện thoại<span>*</span>
									</p>
									<input type="text">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>
										Email<span>*</span>
									</p>
									<input type="text">
								</div>
							</div>
						</div>
						<div class="checkout__input__checkbox">
							<label for="acc"> Tạo tài khoản? <input type="checkbox"
								id="acc"> <span class="checkmark"></span>
							</label>
							<p>Tạo tài khoản bằng cách nhập thông tin bên dưới. Nếu bạn
								là khách hàng cũ, vui lòng đăng nhập trên đầu trang</p>
						</div>
						<div class="checkout__input">
							<p>
								Mật khẩu<span>*</span>
							</p>
							<input type="text">
						</div>
						<div class="checkout__input__checkbox">
							<label for="diff-acc"> Ghi chú cho bên vận chuyển, đóng
								gói <input type="checkbox" id="diff-acc"> <span
								class="checkmark"></span>
							</label>
						</div>
						<div class="checkout__input">
							<p>
								Ghi chú<span>*</span>
							</p>
							<input type="text" placeholder="Ghi chú cho bên vận chuyển.">
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="checkout__order">
							<h4 class="order__title">Đơn hàng của bạn</h4>
							<div class="checkout__order__products">
								Mặt hàng <span>Tổng</span>
							</div>
							<ul class="checkout__total__products">
								<li>01. Vanilla salted caramel <span>$ 300.0</span></li>
								<li>02. German chocolate <span>$ 170.0</span></li>
								<li>03. Sweet autumn <span>$ 170.0</span></li>
								<li>04. Cluten free mini dozen <span>$ 110.0</span></li>
							</ul>
							<ul class="checkout__total__all">
								<li>Tổng tiền tạm tính <span>$750.99</span></li>
								<li>Tổng tiền <span>$750.99</span></li>
							</ul>
							<div class="checkout__input__checkbox">
								<label for="acc-or"> Tạo tài khoản? <input
									type="checkbox" id="acc-or"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="checkout__input__checkbox">
								<label for="payment"> Chọn phương thức thanh toán <input
									type="checkbox" id="payment"> <span class="checkmark"></span>
								</label>
							</div>
							<div class="checkout__input__checkbox">
								<label for="paypal"> Paypal <input type="checkbox"
									id="paypal"> <span class="checkmark"></span>
								</label>
							</div>
							<button type="submit" class="site-btn">ĐẶT HÀNG</button>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</section>
<!-- Checkout Section End -->

<%@ include file="footer.jsp"%>