<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Prins Mall 로그인</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	

<style>

.centered { 
display:table; 
width:500px;
height:500px; 
text-align: center;
vertical-align: middle;}
</style>
</head>
<body>



<form action="loginPost" method="post">
      <div class="centered bg-info">
      		<br>
      		<br>
      		<br>
       		<h1 class="title">Prins Mall 로그인</h1>
       		<br>
       		<br>
       		<br>
       		아  이  디 : <input type="text" placeholder="아이디를입력하세요" maxlength="15" name="id"> <br>
       		<input type="checkbox" name="userCookie"> 아이디 기억하기<br>
       		비밀번호 : <input type="text" placeholder="비밀번호를입력하세요" maxlength="15" name="password">
       		<br>
       		<br>
       		<br>
       		<input type="submit" class="btn btn-primary" value="로그인하기"> &nbsp;&nbsp;&nbsp;
       		<input type="button" value="취소하기">
       		
       		
       		
      </div>
 </form>

</body>
</html>