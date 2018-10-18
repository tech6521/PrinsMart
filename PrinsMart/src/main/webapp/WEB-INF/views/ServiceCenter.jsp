<!doctype html>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<html lang="ko">
<head>
<title>Prins Mall 고객센터</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
<style>
.MyPageLine{
	position:relative;
	border: 1px solid red;
}

</style>
</head>
<body>
<%@include file="include/header.jsp" %>
<br>
<br>
<hr class="MyPageLine">
<p> &nbsp; &nbsp; &nbsp;  홈 > <b>고객센터</b></p>
<p>${login.id}</p>
<input type="button" value='${login.id}' name='${login.id}'>

</body>
</html>