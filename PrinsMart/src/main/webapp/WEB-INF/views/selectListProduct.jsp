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

<%@include file="include/nav.jsp" %>

<hr style="border: 2px solid red;">

</head>
<body>
	
    <h2 align="center">상품 목록</h2>
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
        <c:forEach var="row" items="${select}">
        <tr>
            <td>
                ${row.product_id}
            </td>
            <td>
                <a href="/productDetail?product_id=${row.product_id}">
                    <img src="${path}/images/${row.product_url}" width="200px" height="150px">
                </a>
            </td>
            <td>
                <a href="/productDetail?product_id=${row.product_id}">${row.product_name}</a>
            </td>
            <td>
                <fmt:formatNumber value="${row.product_price}" pattern="###,###,###" />
            </td>
            
            <td style="width: 500px;">
                ${row.product_desc}
            </td>
            
            
        </tr>
        </c:forEach>
    </table>
</body>
</html>
