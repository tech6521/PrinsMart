
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>전체상품보기</title>

<table>
   <tr>
   <th>번호</th>
   <th>상품코드</th>
   <th>상품이름</th>
   <th>주소</th>
   <th>상품가격</th>
   </tr>
   
   
   <c:forEach items="${list}" var="list">
   <tr>
    <td>${list.idx}</td>
    <td>${list.product_code}</td>
    <td>${list.product_name}</td>
    <td>${list.product_address}</td>
    <td>${list.product_price}</td>
    
   </tr>
   </c:forEach>
   
</table>
