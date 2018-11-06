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
<style>
a{
	text-decoration: none;
	color: #585858;
}
a:hover {
	text-decoration: none;
	background-color: #E6E6E6;
}
</style>

<%@ include file="./include/header.jsp" %>

<%@include file="include/nav.jsp" %>

<hr style="border: 2px solid red;">

</head>
<body>
	
    
    <div class="box" align="center">
				<div class="box-header with-border" align="center">
					<h3 class="box-title" align="center"><b>상품 목록</b></h3>
					
				</div>
				<br>
				<br>
				<div class="box-body" align="center">
    <table class = "table table-bordered" border="1" style="width: 100%;text-align: center;font-size: 20px;">
        <tr style="text-align:center;">
            <th style="text-align:center;">상품ID번호</th>
            <th style="text-align:center;">상품이미지</th>
            <th style="text-align:center;">상품명</th>
            <th style="text-align:center;">가격</th>
            <th style="text-align:center;">상세설명</th>
        </tr>
        <c:forEach var="row" items="${select}">
        <tr align="center" style="text-align: center;">
            <td style="text-align: center;vertical-align: middle;">
                ${row.product_id}
            </td>
            <td>
                <a href="/productDetail?product_id=${row.product_id}">
                    <img src="${path}/images/${row.product_url}" width="200px" height="150px">
                </a>
            </td>
            <td style="text-align: center;vertical-align: middle;">
                <a href="/productDetail?product_id=${row.product_id}">${row.product_name}</a>
            </td>
            <td style="text-align: center;vertical-align: middle;">
                <fmt:formatNumber value="${row.product_price}" pattern="###,###,###" />
            </td>
            
            <td style="width: 500px;text-align: center;vertical-align: middle;">
                ${row.product_desc}
            </td>
            
            
        </tr>
        </c:forEach>
    </table>
    </div>
    </div>
    
</body>
</html>
