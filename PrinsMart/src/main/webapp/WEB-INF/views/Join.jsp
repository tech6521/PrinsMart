<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
<script language="javascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
<style>
tr {
	width: 600px;
}

input {
	margin:1px;
}

</style>
<script>

function checkz() {
	if($("#NAME").val() == ""){
        alert("이름을 입력해주세요");
        $("#NAME").focus();
        return false;
      }
	
	if($("#PHONE").val() == ""){
        alert("폰 번호를 입력해주세요");
        $("#PHONE").focus();
        return false;
      }
	
	if($("#ADDRESS").val() == ""){
        alert("주소를 입력해주세요");
        $("#ADDRESS").focus();
        return false;
      }
	
	
	if($("#ID").val() == ""){
        alert("아이디를 입력해주세요");
        $("#ID").focus();
        return false;
      }
	
	if($("#PW").val() == ""){
        alert("비밀번호를 입력해주세요");
        $("#PW").focus();
        return false;
      }
	
	
	if($("#PW").val() != $("#PW1").val()) {
        alert("비밀번호와 비밀번호 확인이 일치하지않습니다.");
        $("#PW").focus();
        return false;
	}
	
	
	
}

</script>

</head>
<body>

<%@include file="include/header.jsp" %>
<h3 align="center">신청정보입력</h3>
<hr style="border: 1px solid red;">

<form name=frm1 action="regist" method="post" onsubmit="return checkz()">
<table align="center" border=1 bordercolor="#CEF6EC" bordercolorlight=gray cellspacing="0" cellpadding="2" style="width:900px;height: 400px;font-size: 20px;font-family:"궁서"; ">
<tr bgcolor="#ececec" align="center">
	<td colspan=2>PMart Mall 회원가입 </td>
</tr>



<tr>
	<td bgcolor="#ececec" align="center"><b style="color:red; ">*</b>이름</td>
	<td><input type="text" name="name" size=12 id="NAME"></td>
</tr>


<tr>
	<td bgcolor="#ececec" align="center"><b style="color:red; ">*</b>휴대폰번호</td>
	<td>
		<input type="text" name="phone" id="PHONE">
	</td>
</tr>

<tr>
<td bgcolor="#ececec" align="center"><b style="color:red; ">*</b>자택주소</td>
<td><input type="text" name="address" id="ADDRESS">
</tr>

<tr>
<td bgcolor="#ececec" align="center" >이메일 주소(선택)</td>
<td><input type="text" name="email"></td>

<tr>
	<td bgcolor="#ececec" align="center"><b style="color:red; ">*</b>아이디</td>
	<td><input type="text" name="id" size=12 maxlength="12" id="ID">
	
</tr>
<tr>
	<td bgcolor="#ececec" align="center"><b style="color:red; ">*</b>비밀번호</td>
	<td><input type="password" name="password" size=12 maxlength="12" id="PW"></td>
</tr>

<tr>
	<td bgcolor="#ececec" align="center"><b style="color:red; ">*</b>비밀번호확인</td>
	<td><input type="password" name="password1" size=12 maxlength="12" id="PW1"></td>
</tr>

</table>
<br><br><br>
<div align="center">
<input type="submit" class="btn btn-success" value="가입하기 <== 모두 기재하셨으면 여기를 클릭해주세요" style="width: 550px;font-size: 20px;">
</div>


</form>

</body>
</html>