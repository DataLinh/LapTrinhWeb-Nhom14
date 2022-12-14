<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/admin" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Sản phẩm</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Hãy chỉnh sửa danh sách sản phẩm của bạn</li>
                        </ol>                                                
                    </div>
                    <div class="container-fluid px-4">
              <a href="${pageContext.request.contextPath}/Reset"><button type="button" class="btn btn-success">Cập nhật danh sách sản phẩm</button></a>
                </div>
                	<table class ="table table-stripe"  border="1">
  						<thead>
   							 <tr>
      							<th scope="col">#</th>
      							<th scope="col">Tên</th>
      							<th scope="col">Giá</th>
      							<th scope="col">Số lượng</th>
      							<th scope="col">Khả dụng</th>
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
      							<th scope="col">Khả dụng</th>
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
      							<td>${item.isDeleted }</td>
      							<td>${item.createdAt }</td>
      							<td>${item.updateAt }</td>
      							<th><form action="Delete" method="post">
      							<input type="hidden" name="productIdDelete" value="${item.id }" />
      							<a><div><button href="${pageContext.request.contextPath}/Delete" type="submit" class="btn btn-danger">Xoá</button></div></a></form></th>
      							<th><form action="Edit" method="post">
      							<input type="hidden" name="productId" value="${item.id }" />
      							<a><div><button href="${pageContext.request.contextPath}/Edit" type="submit" class="btn btn-info">Cập nhật</button></div></a></form></th>
							    </tr>
							    </c:forEach>
							  </tbody>
						</table>
                </main>
<%@ include file="footer.jsp" %>
