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
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<hr style="border: 2px solid red;">
<title>주문하기</title>
</head>
<body>
<body>

<div style="width: 100%; height: 100%; margin-left: 20%">
<h1>배송정보</h1>
<br>
<br>

<form action="pay" method="post">
<table class="table table-bordered" style="width: 1000px;font-size: 16px;">
	
	
	
		<tr>
			<td scope="col">주문자</td>
			<td><input type="text" name="ordername" value="${userVO.name}"></td>
			<td scope="col">주문고객 휴대 전화번호</td>
			<td><input type="text" name="orderphone" value="${userVO.phone}"></td>
		</tr>
		
		<tr>
			<td>배송받을 주소</td>
			<td colspan="3">
			<input type="text" name="address" size="80px" value="${userVO.address}"></td>
		</tr>
		
		<tr>
			<td>받는분</td>
			<td><input type="text" name="name" value="${userVO.name}"></td>
			<td>받는분 휴대폰 전화번호</td>
			<td><input type="text" name="setphone" value="${userVO.phone}"></td>
		</tr>
		<tr>
			<td>매장상품 배송 메세지</td>
			<td>
			<select name="message" style="width: 200px;" >
			<option style="width: 200px;">메세지를 선택해주세요</option>
			
			<option>부재 시 경비(관리)실에 맡겨주세요</option>
			
			<option>부재 시 문 앞에 놓아주세요.</option>
			
			<option>부재 시 휴대폰 연락주세요</option>
			
			<option>벨 누르지 마시고 직접노크해 주세요</option>
			</select>
			</td>
			
			<td colspan="2">
			<input type="text" name="name" value="직접입력"  size="40px"> 
			</td>
			
			
		</tr>
</table>
<br>
<br>
<h1>주문상품</h1>
<br>
<br>
<%! int sum = 0; %>
<table class="table table-bordered" style="width: 1000px;font-size: 16px;">
	<tr>
		<td>상품</td>
		<td>상품이미지</td>
		<td>구매금액</td>
		<td>수량</td>
		<td>총 구매금액</td>
		<td>배송비 정보</td>
	</tr>
	 <c:forEach var="row" items="${list}">
	<tr height="30px">
		<td> ${row.product_name}</td>
		<td width="230px"><img src="${path}/images/${row.product_url}" width="200px" height="80px" align="left"></td>
		<td>${row.product_price}</td>
		<td>${row.amount}</td>
		<td> ${row.product_price * row.amount} 
			<input type="hidden" value="${sum = sum + row.product_price * row.amount}">
		</td>
		<td>매장상품 배송 <br> (배송비 3,000원)</td>
		
	</tr>
	</c:forEach>
	
</table>

<h3>전체 총 구매금액 : <fmt:formatNumber value="${sum}" pattern="###,###,###" /> 원 입니다.</h3> <br>

<table class="table table-bordered" style="width: 1000px;font-size: 16px;">
	<tr>
		<td>전체 구매금액</td>
		<td>배송비</td>
		<td>총 금액</td>
		<td>결제 방법</td>
	</tr>
	
	<tr>
		<td> <fmt:formatNumber value="${sum}" pattern="###,###,###" /> 원</td>
		<td> 3,000 원 </td>
		<td> <fmt:formatNumber value="${sum + 3000}" pattern="###,###,###" /> 원</td>
		<td><input type="checkbox" value="money"> 현금 &nbsp; <input type="checkbox" value="card"> 카드</td>
	</tr>
	
	
</table>
	
<button type="submit" class="btn btn-primary" style="width: 500px;margin-left: 20%">결제하기</button>
</form>
</div>
</body>
</html>