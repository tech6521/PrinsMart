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
<title>장바구니</title>
</head>
<body>

 <h2 align="center"> ${login.id}님의 장바구니</h2> 
    <br>
    <br>
    
    <div align="center">
    <table border="1" style="width: 100%;text-align: center;font-size: 20px;">
    	
        <tr style="text-align: center;">
        	<th>카트ID</th>
            <th>상품이름</th>
            <th>상품이미지</th>
            <th>가격</th>
            <th>전체 가격</th>
            <th>갯수</th>
             
        </tr>
        
        
        <%! int sum = 0; %>
        <c:forEach var="row" items="${list}">
        <tr>
        	<td>
                ${row.cart_id}
                
            </td>
        
        	<td>
                ${row.product_name}<br>
                <form action="delete" method="POST">
                	<input type="hidden" name='cart_id' value='${row.cart_id}'>
               		<button type="submit">삭제</button>
                </form>
            </td>
            <td>
            	
                <img src="${path}/images/${row.product_url}" width="200px" height="150px">
            </td>
            <td>
                 <fmt:formatNumber value="${row.product_price}" pattern="###,###,###" /> 
               	
            </td>
            <td>
            <fmt:formatNumber value="${row.product_price * row.amount}" pattern="###,###,###" />
            <input type="hidden" name="sum_price" value="${sum = sum + row.product_price * row.amount}">
            </td>
            <td>
            	
                ${row.amount} 개
            </td>
            
          </tr>
          
          
       
        </c:forEach>
        
         <tr>
        
        <td colspan="6" style="background: green;height: 50px">
         
         전체 가격 합계 : <fmt:formatNumber value="${sum}" pattern="###,###,###" /> 원 입니다.
         
        </td>
        </tr>
        
      
       
         
    </table>
    </div>
     <br>
     <br>
     <br>
     
     	<form action="orderList?user_id=${login.id}" method="get">
     	<input type="text" name="user_id" value='${login.id}'>
        <div align="center">
        
        <input type="submit" value="주문하기" class="btn btn-primary" style="width:600px;height:50px;font-size:20px;">
    	</div>
    	</form>
     


</body>
</html>