<!doctype html>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<html lang="ko">
<head>
<title>Prins Mall 마이페이지</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
<style>
hr{
	border:2px solid dashed;
}

.MyPageLine{
	position:relative;
	border: 1px solid red;
}


.MyPage{
	position:relative;
	width: 100%;
	height: 1024px;
	background-color: #424242;
	margin: 0;
	padding: 0;
}



.MyPageLeftBar {
	position:absolute;
	margin-left: 2%;
	margin-top: 5%;
	
	width: 200px;
	height: 90%;
	background-color: #BDBDBD;
}

.MyPageTopBar {
	position:absolute;
	right:0;
	width: 70%;
	height: 80%;
	background-color: #BDBDBD;
	float:right;
	margin-top: 5%;
	margin-right: 10%;
	margin-left: 20%;
}

.MyPageLeftBar-Title{
	width:100%;
	height: 50px;
	background: white;
	text-align:center;
	line-height:50px;
	font-size:17px;
	font-weight: bold;
	
}



.MyPageUL li {
	list-style: none;
	font-size:15px;
	margin: 2px;
	padding: 0.5px;
	width: 100%;
	padding: 4px;
}

.MyPageUL li a {
	color:#fff; font-weight:bold; display:block; text-decoration: none;
}

.MyPageUL li a:hover{ background:#666;}

.List-title{
	font-size:20px;
	font-weight: bold;
}


</style>
</head>
<body>
<%@include file="include/header.jsp" %>
<br>
<br>
<hr class="MyPageLine">
<p> &nbsp; &nbsp; &nbsp;  홈 > <b>prins Mall 마이페이지</b></p>
<div class="MyPage">

<div class="MyPageLeftBar">
	<div class="MyPageLeftBar-Title">prins Mall 마이페이지</div>
	<ul class="MyPageUL">
		<li class="List-title">나의 쇼핑수첩</li>
		<li> <a href="#">주문/배송조회</a></li>
		<li> <a href="#">취소/반품조회</a></li>
		<li> <a href="#">배송자 관리</a></li>
	</ul>
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 쇼핑 해택</li>
		<li> <a href="#">쿠폰함</a></li>
		<li> <a href="#">적립쿠폰</a></li>
	</ul>
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 상품</li>
		<li> <a href="#">최근 구매 상품</a></li>
		<li> <a href="#">찜한 상품</a></li>
	</ul>
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 활동</li>
		<li> <a href="#">상품평</a></li>
		<li> <a href="#">배송평가</a></li>
		<li> <a href="#">1:1문의</a></li>
		<li> <a href="#">나의문의내역</a></li>
		<li> <a href="#">이벤트</a></li>
	</ul>
	
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 정보</li>
		<li> <a href="">회원정보 변경</a></li>
		<li> <a href="#">회원 탈퇴</a></li>
		<li> <a href="#">개인정보 이용내역</a></li>
	</ul>
	
</div>
<div class="MyPageTopBar">
	
	<form role="form" method="post">
	<table border="1" style="margin-left: 5%; margin-top: 20%;width: 1000px;height: 400px;font-size: 25px;text-align: center;">
	<tr>
	<th colspan="2" style="text-align: center;">회원 정보 변경</th>
	</tr>
	
	<tr>
	<td>아이디</td>
	<td><input type="text" name="id" value="${vo.id}"> </td>
	</tr>
	
	<tr>
	<td>비밀번호</td>
	<td><input type="text" name="password" value="${vo.password}"> <br></td>
	</tr>
	
	<tr>
	<td>이메일</td>
	<td><input type="text" name="email" value="${vo.email}"> <br></td>
	</tr>
	
	<tr>
	<td>주소</td>
	<td><input type="text" name="address" value="${vo.address}"> <br></td>
	</tr>
	
	<tr>
	<td>휴대폰</td>
	<td><input type="text" name="phone" value="${vo.phone}"> <br></td>
	</tr>	
	<tr>
	<td colspan="2"><button type="submit" class="btn btn-primary" style="width: 400px;">수정하기</button></td>
	</tr>
	</table>
	</form>
	
</div>

</div>
</body>
</html>