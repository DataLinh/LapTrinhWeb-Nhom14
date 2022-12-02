<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:url value="view/web" var="url"></c:url>
    <html>
        <head>
            <title>Product Page</title>
        </head>
        <body>

            <table cellpadding="2" cellspacing="2" border="1">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Buy</th>
                </tr>
            <c:forEach var="product" items="${products }">
                <tr>
                    <td>${product.id }</td>
                    <td>${product.title }</td>				
                    <td>${product.price }</td>
                    <td align="center">
                        <a href="${pageContext.request.contextPath }/GioHang?&action=buy&productId=${product.id }">Thêm vào giỏ </a>
                    </td>
                </tr>
            </c:forEach>
            </table>

    </body>
</html>