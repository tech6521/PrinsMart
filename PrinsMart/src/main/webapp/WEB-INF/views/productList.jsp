<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<title>PrinsMart</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	


<%@ include file="./include/header.jsp" %>

<hr style="border: 1px solid red;">

</head>
<body>
	
    <h2 align="center">상품 전체목록</h2>
    <br>
    <br>
    <table border="1" style="width: 1200px;text-align: center;font-size: 20px;">
        <tr style="text-align: center;">
            <th>상품ID번호</th>
            <th>상품이미지</th>
            <th>상품명</th>
            <th>가격</th>
            <th>상세설명</th>
        </tr>
        <c:forEach var="row" items="${list}">
        <tr>
            <td>
                ${row.productId}
            </td>
            <td>
                <a href="${path}/shop/product/detail/${row.productId}">
                    <img src="${path}/images/${row.productUrl}" width="200px" height="150px">
                </a>
            </td>
            <td>
                <a href="${path}/shop/product/detail/${row.productId}">${row.productName}</a>
            </td>
            <td>
                <fmt:formatNumber value="${row.productPrice}" pattern="###,###,###" />
            </td>
            
            <td style="width: 500px;">
                ${row.productDesc}
            </td>
            
            
        </tr>
        </c:forEach>
    </table>
</body>
</html>
