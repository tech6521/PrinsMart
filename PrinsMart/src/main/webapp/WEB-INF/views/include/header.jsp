<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <html>
 <style>
 .Main-banner{
 	width:100%;
 }
 .logo{
 margin: 0 0 2% 5%;
 }
 .search{
 	align-content:center;
 	float: right;
 	display: inline-block;
 }



 </style>
 	<head> 
 	
 	
 	
 	<img src="http://placehold.it/1500x100" class="Main-banner"> 
   <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
        <span class="icon-bar"></span> 
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    	
      <ul class="nav navbar-nav navbar-right">
       <c:if test="${empty login}">
       	<h4 align="right">지금 로그인 하세요</h4>
      	<li><a href="login"> 로그인</a></li> 
		<li><a href="Join">회원가입 </a></li>
	 </c:if> 
	 <c:if test="${!empty login}">
	 	<h4 align="right"><b>${login.id}</b>님 환영합니다.</h4>  
	 	<li><a href="/logout"> 로그아웃</a></li> 
	 	
   		<li><a href="MyPage">마이페이지 </a></li>
   	</c:if> 
   		<li><a href="/listCart?user_id=${login.id}">장바구니 </a>
   		
   		</li>
   		<li><a href="ServiceCenter">고객센터 </a></li>
      </ul>
      
    </div>
  </div>
</nav>


<img src="http://placehold.it/250x50" class="logo">











 
     
     

    
   		
   	
   
   
   
	</head>
</html>
	
        