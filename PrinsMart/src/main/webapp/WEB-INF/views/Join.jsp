<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
tr {
	width: 600px;
}

</style>


</head>
<body>

<h3 align="center">��û�����Է�</h3>
<hr>
<br>
<br>
<form name=frm1 action="regist" method="post">
<table align="center" border=1 bordercolor="pink" bordercolorlight=gray cellspacing="0" cellpadding="2" style="width:500px;">
<tr bgcolor="#ececec" align="center">
	<td colspan=2>PMart Mall ȸ������ </td>
</tr>

<tr>
	<td bgcolor="#ececec" align="center">�̸�</td>
	<td><input type="text" name="name" size=12></td>
</tr>


<tr>
	<td bgcolor="#ececec" align="center">�޴�����ȣ</td>
	<td>
		<input type="text" name="phone">
	</td>
</tr>

<tr>
<td bgcolor="#ececec" align="center">�����ּ�</td>
<td><input type="text" name="address">
</tr>

<tr>
<td bgcolor="#ececec" align="center" >�̸��� �ּ�(����)</td>
<td><input type="text" name="email"></td>

<tr>
	<td bgcolor="#ececec" align="center">���̵�</td>
	<td><input type="text" name="id" size=12 maxlength="12">
	
</tr>
<tr>
	<td bgcolor="#ececec" align="center">��й�ȣ</td>
	<td><input type="password" name="password" size=12 maxlength="12"></td>
</tr>
</table>

<input type="submit" class="btn btn-perimery" value="�����ϱ�">



</form>

</body>
</html>