<%-- 
    Document   : general-error
    Created on : Nov 10, 2022, 3:43:38 PM
    Author     : son
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<c:url value="/view/web" var="url"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:700,900" rel="stylesheet">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/view/web/css/style1.css" />

</head>
<body>
    <div id="notfound">
		<div class="notfound">
			<div class="notfound-404">
                            <h1>${pageContext.errorData.statusCode}</h1>
				<h2>Chức năng này đang bảo trì</h2>
			</div>
                    <br>
			<a href="${pageContext.request.contextPath}/TrangChu">Quay lại trang chủ</a>
		</div>
	</div>
</body>

</html>
<%@ include file="footer.jsp" %>


