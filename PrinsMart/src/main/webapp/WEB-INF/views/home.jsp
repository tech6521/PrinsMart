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



<style>



 .ab li{
 	font-size: 20px;
 	margin: 0 20px;
 
 }
</style>
	
</head>
<body>



<%@include file="include/header.jsp" %>


<nav class="navbar navbar-default">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav ab">
          	<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">카테고리 보기<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">과일</a></li>
                <li><a href="#">채소</a></li>
                <li><a href="#">과자/음료수</a></li>
            	<li><a href="#">주방용품</a></li>
                <li><a href="#">기타</a></li>
              </ul>
              
            </li>
            <li><a href="#">세일목록</a></li>
            <li><a href="#about">인기상품</a></li>
            <li><a href="#contact">스피드장보기</a></li>
            <li><a href="../navbar/">이벤트&쿠폰</a></li>
            <li><a href="../navbar-static-top/">커뮤니티</a></li>
         </ul>
          
        </div><!--/.nav-collapse -->
      </div>
   </nav>
   
<form action="PDAll"> 
<div class="container resizable" style="float:right;">
<select style="width: 100px;height: 35px; text-align: center;">
<option> 전체보기</option>
<option>과자</option>
<option>야채</option>
<option>육류</option>
<option>생활제품</option>
</select>
<input type="text"  value='' placeholder="검색어를 입력하세요" style="width: 300px;height: 35px; text-align: center;">
<button type="submit" class="btn btn-primary">검색</button>
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
