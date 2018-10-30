<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>PrinsMart</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	




	
</head>
<body>



<%@include file="include/header.jsp" %>

<%@include file="include/nav.jsp" %>



   
<form action="allProductList"> 
<div class="container resizable" style="float:right;">
<select name="searchType" style="width: 100px;height: 35px; text-align: center;">
<option value="n"
<c:out value="${cri.searchType == null?'selected':''}"/>> 전체보기</option>
<option value="s"
<c:out value="${cri.searchType eq 's'?'selected':''}"/>>과자</option>
<option value="v"
<c:out value="${cri.searchType eq 'v'?'selected':''}"/>>야채</option>
<option value="m"
<c:out value="${cri.searchType eq 'm'?'selected':''}"/>>육류</option>
<option value="c"
<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>생활제품</option>
</select>
<input type="text"  name='keyword' value='${cri.keyword}' placeholder="검색어를 입력하세요" style="width: 300px;height: 35px; text-align: center;">
<button type="submit" class="btn btn-primary" id="searchBtn">검색</button>
</div>
</form> 



<h1 class="text-hide">Custom heading</h1>



<div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:70%;margin:5% 0 0 10%;height: 50%"> 
	
	<!--페이지-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!--페이지-->

	<div class="carousel-inner" >
		<!--슬라이드1-->
		<div class="item active"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 1</h1>
					<p>텍스트 1</p>
				</div>
			</div>
		</div>
		<!--슬라이드1-->

		<!--슬라이드2-->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" style="width:100%" data-src="" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 2</h1>
					<p>텍스트 2</p>
				</div>
			</div>
		</div>
		<!--슬라이드2-->
		
		<!--슬라이드3-->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" style="width:100%" data-src="" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>Slide 3</h1>
					<p>텍스트 3</p>
				</div>
			</div>
		</div>
		<!--슬라이드3-->
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>	



  

<P>  The time on the server is ${serverTime}. </P>

<%@include file="include/footer.jsp" %>






</body>
</html>
