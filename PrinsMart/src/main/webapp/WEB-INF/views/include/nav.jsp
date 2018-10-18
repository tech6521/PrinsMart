<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>



 .ab li{
 	font-size: 20px;
 	margin: 0 20px;
 
 }
</style>




</head>
<body>
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
              <a href="#" onmouseover="mover()" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">카테고리 보기<span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="${path}/selectListProduct?categoryid=1">과일</a></li>
                <li><a href="${path}/selectListProduct?categoryid=2">채소</a></li>
                <li><a href="${path}/selectListProduct?categoryid=3">과자/음료수</a></li>
            	<li><a href="${path}/selectListProduct?categoryid=4">주방용품</a></li>
                <li><a href="${path}/selectListProduct?categoryid=5">기타</a></li>
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
   
   
   
</body>
</html>