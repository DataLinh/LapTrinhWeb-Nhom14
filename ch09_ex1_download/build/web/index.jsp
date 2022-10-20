<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <div>
            <a href="https://thanhvien-nhom14.herokuapp.com/" data-preview-size="1040px"><img alt="back" src="./images/back.png" width="80" height="50"> Trở về trang thành viên </a>
            <h1> </h1>
        </div>
        <h1>List of albums</h1>

        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:if test="${cookie.firstNameCookie.value != null}">
            <p>Welcome back, <c:out value='${cookie.firstNameCookie.value}'/></p>
        </c:if>

        <p>
            <a href="download?action=checkUser&amp;productCode=8601">
                86 (the band) - True Life Songs and Pictures
            </a><br>

            <a href="download?action=checkUser&amp;productCode=pf01">
                Paddlefoot - The First CD
            </a><br>

            <a href="download?action=checkUser&amp;productCode=pf02">
                Paddlefoot - The Second CD
            </a><br>

            <a href="download?action=checkUser&amp;productCode=jr01">
                Joe Rut - Genuine Wood Grained Finish
            </a>
        </p>

    </body>
</html>