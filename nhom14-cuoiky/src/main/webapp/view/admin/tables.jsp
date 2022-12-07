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
				<i class="fas fa-table me-1"></i> Bảng sản phẩm
			</div>
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Tên</th>
							<th scope="col">Giá</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Miêu tả</th>
							<th scope="col">Ngày tạo</th>
							<th scope="col">Ngày cập nhật</th>
						</tr>
					</thead>
					<tfoot>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Tên</th>
							<th scope="col">Giá</th>
							<th scope="col">Số lượng</th>
							<th scope="col">Miêu tả</th>
							<th scope="col">Ngày tạo</th>
							<th scope="col">Ngày cập nhật</th>
						</tr>
					</tfoot>
					<tbody>
						<c:forEach var="item" items="${product}">
    						<tr>
      							<th scope="row">${item.id }</th>
      							<td>${item.title }</td>
      							<td>${item.price }</td>
      							<td>${item.quantity }</td>
      							<td>${item.description }</td>
      							<td>${item.createdAt }</td>
      							<td>${item.updateAt }</td>
							    </tr>
							    </c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</main>
<%@ include file="footer.jsp"%>
