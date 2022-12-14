<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="/view/admin" var="url"></c:url>
<jsp:include page="header.jsp"></jsp:include>
		<main>
			<div class="container-fluid px-4">
                        <h1 class="mt-4">Cập nhật sản phẩm</h1>                                           
                    </div>
                    <div class="container-fluid px-4">
                   <div class="row">
                   	<div class="col">
                   		<c:if test="${not empty message }">
                   		<div class="alert alert-success">${message}</div>
                   		</c:if>
                   		<c:if test="${not empty error }">
                   		<div class="alert alert-danger">${error}</div>
						</c:if>                   	
                   	</div>
                   	</div>
               <div class="row">
               		<div class="col">
               			<form action="UpdateProduct" method="post" enctype="multipart/form-data">
               				<div class ="form-group">
               					<lable for=productId>Product ID:</lable>
               					<input type="text" name="productId" id="productId" class="form-control" value="${sessionScope.productEdit.id}"/>
               				</div>
               				<div class ="form-group">
               					<lable for=productTitle>Product title:</lable>
               					<input type="text" name="productTitle" id="productTitle" class="form-control" value="${sessionScope.productEdit.title}"/>
               				</div>
               				<div class ="form-group">
               					<lable for=productPrice>Product price:</lable>
               					<input type="text" name="productPrice" id="productPrice" class="form-control" value="${sessionScope.productEdit.price}"/>
               				</div>
               				<div class ="form-group">
               					<lable for=productQuantity>Quantity:</lable>
               					<input type="text" name="productQuantity" id="productQuantity" class="form-control" value="${sessionScope.productEdit.quantity}"/>
               				</div>
               				<div class ="form-group">
               					<lable for=productImage>Image:</lable>
               					<input type="file" name="productImage" id="productImage" class="form-control"/>
               				</div>
               				<div class ="form-group">
               					<lable for=productDescription>Description:</lable>
               					<input type="text" name="productDescription" id="productDescription" class="form-control" value="${sessionScope.productEdit.description}"/>
               				</div>
               		
           					<div class="form-group">
              					<button type="submit" class="btn btn-success" formaction="${pageContext.request.contextPath}/UpdateProduct/Update">Update</button>
              					<button type="submit" class="btn btn-primary" formaction="${pageContext.request.contextPath}/UpdateProduct/Create">Create</button>
              					<button type="submit" class="btn btn-info" formaction="${pageContext.request.contextPath}/Reset">Reset</button>
              					<div class="small"><a href="${pageContext.request.contextPath}/TrangAdmin">Quay lại trang admin</a></div>
                			</div>
               			</form>
               		</div>
                </div>
                </div>
		</main>


<%@ include file="footer.jsp" %>