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
table {
	float: right;
}
p {
	font-size:20px;
	margin-top: 2%;
	margin-left: 5%;
}

</style>

<%@ include file="../include/header.jsp" %>

<%@include file="../include/nav.jsp" %>

<hr style="border: 2px solid red;">

</head>
<body>
	<p>홈 > <b>상품 전체 목록</b></p>
    <h2 align="center">상품 전체목록</h2>
    <br>
    <br>
    <div>
    <div>
    	
    </div>
    <div>
    <table border=1 style="width: 1200px;font-size: 20px;border-color: #FAFAFA;" class= "table table-hover text-info text-center">
        <tr>
            <th class="text-center">상품ID번호</th>
            <th class="text-center">상품이미지</th>
            <th class="text-center">상품명</th>
            <th class="text-center">가격</th>
            <th class="text-center">상세설명</th>
        </tr>
        <c:forEach var="detail" items="${list}">
        <tr>
            <td class="text-center">
            <br>
            <br>
                ${detail.product_id}
                
            </td>
            <td>
           
                <a href="/productDetail?product_id=${detail.product_id}">
                    <img src="${path}/images/${detail.product_url}" width="200px" height="150px">
                </a>
            </td>
            <td>
            <br>
            <br>
                <a href="/productDetail?product_id=${detail.product_id}">${detail.product_name}</a>
            </td>
            <td>
            <br>
            <br>
                <fmt:formatNumber value="${detail.product_price}" pattern="###,###,###" />
            </td>
            
            <td style="width: 500px;">
            <br>
            <br>
                ${detail.product_desc}
            </td>
            
            
        </tr>
        </c:forEach>
    </table>
   </div>
   </div>
   
</body>
</html>
