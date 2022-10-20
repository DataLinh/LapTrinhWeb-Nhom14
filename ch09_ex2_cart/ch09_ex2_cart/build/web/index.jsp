<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<div>
    <a class="hidden-sm hidden-xs" 
       href="https://thanhvien-nhom14.herokuapp.com/" 
       id="previewLaptopBtn" 
       data-preview-size="1040px">
        <img alt="back" src="https://iconarchive.com/download/i103993/custom-icon-design/flatastic-8/Go-back.ico" width="80" height="50"> Trở về trang thành viên </a>
    <h1> </h1>
</div>
<%@ page pageEncoding="UTF-8"%>    
<h1>CD list</h1>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <tr>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
    </tr>
  <c:forEach var="product" items="${products}">
    <tr>
        <td><c:out value='${product.description}'/></td>
        <td class="right">${product.priceCurrencyFormat}</td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
    </c:forEach>
</table>
        
</body>
</html>