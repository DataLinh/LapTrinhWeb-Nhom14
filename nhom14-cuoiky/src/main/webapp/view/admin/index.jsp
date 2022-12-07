<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/admin" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Trang chủ</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Trang chủ</li>
                        </ol>                                                
                    </div>
                    <div class="container-fluid px-4">
              <a href="${pageContext.request.contextPath}/UpdateProduct"><button type="button" class="btn btn-success">Cập nhật danh sách sản phẩm</button></a>
                </div>
                	<table class="table">
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
      							<th><a href="${pageContext.request.contextPath}/trang-admin/Delete"><div><button type="button" class="btn btn-danger">Xoá</button></div></a></th>
							    </tr>
							    </c:forEach>
							  </tbody>
						</table>
                </main>
<%@ include file="footer.jsp" %>
