<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:url value="/view/admin" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Bảng</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="${url}/index.jsp">Sản
					phẩm</a></li>
			<li class="breadcrumb-item active">Bảng</li>
		</ol>
		<div class="card mb-4"></div>
		<div class="card mb-4">
			<div class="card-header">
				<i class="fas fa-table me-1"></i> Bảng đơn hàng
			</div>
				<table class ="table table-stripe"  border="1">
					<thead>
						<tr>
							<th scope="col">Mã đơn hàng</th>
							<th scope="col">Tên</th>
							<th scope="col">Email</th>
							<th scope="col">Ngày mua</th>
							<th scope="col">Tổng tiền</th>
							<th scope="col">Địa chỉ</th>
							<th scope="col">Trạng thái</th>
						</tr>
					</thead>
<%--					<tfoot>--%>
<%--						<tr>--%>
<%--							<th scope="col">Mã đơn hàng</th>--%>
<%--							<th scope="col">Tên</th>--%>
<%--							<th scope="col">Email</th>--%>
<%--							<th scope="col">Ngày mua</th>--%>
<%--							<th scope="col">Tổng tiền</th>--%>
<%--							<th scope="col">Địa chỉ</th>--%>
<%--							<th scope="col">Trạng thái</th>--%>
<%--						</tr>--%>
<%--					</tfoot>--%>
					<tbody>
						<c:forEach var="item" items="${sessionScope.order}">
    						<tr>
								<th scope="row"><a href="${pageContext.request.contextPath}/admin/updateOrder?id=${item.id}">${item.id}</a></th>
      							<td>${item.fullName }</td>
      							<td>${item.email}</td>
      							<td>${item.orderDate}</td>
      							<td>${item.totalMoney}</td>
      							<td>${item.address}</td>
      							<td>${item.status != 0?(item.status!=1 ?"Đã giao hàng":"Đang giao hàng"):"Chưa xác nhận"}</td>
							</tr>
							    </c:forEach>
					</tbody>
				</table>
		</div>
	</div>
</main>
<%@ include file="footer.jsp"%>
