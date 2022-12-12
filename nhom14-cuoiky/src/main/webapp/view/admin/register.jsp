<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/admin" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Trang đăng ký</title>
        <link href="${url}/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Tạo tài khoản</h3></div>
                                    <div class="card-body">
                                        <form action="DangKy" method="post" >
                                            <div class="row">
                                            	<div class="col">
                                            	<small id="message1" class="text-danger">
										          ${sessionScope.message1}
										        </small>
                                            	</div>
                                            </div>
                                            <div class="row mb-3">                 	
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputUserName" type="text" name="userName" placeholder="Create a user name"   />
                                                <label for="inputUserName">Họ và tên</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputEmail" type="email" name="userEmail" placeholder="name@example.com" />
                                                <label for="inputEmail">Địa chỉ Email</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputAddress" type="text" name="userAddress" placeholder="Create a user address" />
                                                <label for="inputAddress">Địa chỉ</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" id="inputPhoneNumber" type="text" name="userPhoneNumber" placeholder="Create a user phone number" />
                                                <label for="inputPhoneNumber">Số điện thoại</label>
                                            </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPassword" type="password" name="userPass" placeholder="Create a password" />
                                                        <label for="inputPassword">Mật khẩu</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" id="inputPasswordConfirm" type="password" name="reUserPass" placeholder="Confirm password" />
                                                        <label for="inputPasswordConfirm">Xác thực mật khẩu</label>
                                                    </div>
                                                </div>
                                         </div>
                                         
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><button type="submit" class="btn btn-primary" formaction="${pageContext.request.contextPath}/DangKy/Register">Tạo tài khoản</button></div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="${pageContext.request.contextPath}/DangNhap">Đã có tài khoản? Đăng nhập?</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Bản quyền &copy; BoostrapAdmin</div>
                            <div>
                                <a href="#">Chính sách</a>
                                &middot;
                                <a href="#">Điều khoản  &amp; Điều kiện</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
