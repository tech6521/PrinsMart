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

<script type="text/javascript">
function button_click() {
	alert("장바구니에 추가하였습니다.");
}
</script>

</head>
<body>
	
	
	
    <h2>상품 상세정보</h2>
    <table border="1">
        <tr>
            <td>
                <img src="${path}/images/${detail.product_url}" width="340" height="300">
            </td>
            <td>
                <table border="1" style="height: 300px; width: 400px;">
                    <tr align="center">
                        <td>상품명</td>
                        <td>${detail.product_name}</td>
                    </tr>
                    <tr align="center">
                        <td>가격</td>
                        <td><fmt:formatNumber value="${detail.product_price}" pattern="###,###,###"/></td>
                    </tr>
                    <tr align="center">
                        <td>상품소개</td>
                        <td>${detail.product_desc}</td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                            <form name="form1" method="post" action="${path}/insert.do">
                            	<input type="hidden" name="cart_id" value='2'>
                            	<input type="text" name="user_id" value='${login.id}'>
                            	 <input type="text" name="product_name" value="${detail.product_name}">
                            	  <input type="text" name="product_url" value="${detail.product_url}">
                            	   <input type="text" name="product_price" value="${detail.product_price}">
                            	
                            	
                               
                                <select name="amount">
                                    <c:forEach begin="1" end="10" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>&nbsp;개
                                <input type="submit" value="장바구니에 담기" onclick="button_click();">
                            </form>
                            <a href="allProductList">상품목록</a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>
