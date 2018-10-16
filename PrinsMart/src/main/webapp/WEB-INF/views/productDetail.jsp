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

    <h2>상품 상세정보</h2>
    <table border="1">
        <tr>
            <td>
                <img src="${path}/images/${vo.productUrl}" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>${vo.productName}</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="${vo.productPrice}" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${vo.productDesc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/shop/cart/insert.do">
                                <input type="hidden" name="productId" value="${vo.productId}">
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기">
                            </form>
                            <a href="productList">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
