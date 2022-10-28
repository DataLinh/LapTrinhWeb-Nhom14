<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ include file="/includes/header.html" %>

<div>
    <a href="https://thanhvien-nhom14.herokuapp.com/" data-preview-size="1040px"><img alt="back" src="./images/back.png" width="80" height="50"> Trở về trang thành viên </a>
    <h1> </h1>
</div>
<h1>Join our email list</h1>
<p>To join our email list, enter your name and
    email address below.</p>
    <c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>

<form action="emailList" method="post">
    <input type="hidden" name="action" value="add">        
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"><br>        
    <label>&nbsp;</label>
    <input type="submit" value="Join Now" class="margin_left">
</form>

<%@ include file="/includes/footer.jsp" %>