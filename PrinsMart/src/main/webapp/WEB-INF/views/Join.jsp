<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style>
table {
	
	height: 25px;
}
</style>

</head>
<body>

<h3 align="center">��û�����Է�</h3>
<hr>
<br>
<br>
<form name=frm1>
<table align="center" border=1 bordercolor="pink" bordercolorlight=gray cellspacing="0" cellpadding="2">
<tr bgcolor="#ececec" align="center">
	<td colspan=2>PMart Mall ȸ������ </td>
</tr>

<tr>
	<td bgcolor="#ececec" align="center">�̸�</td>
	<td><input type="text" name="name" size=12></td>
</tr>

<tr>
	<td bgcolor="#ececec" align="center">�ֹε�Ϲ�ȣ</td>
	<td><input type="text" name="Pnumber" size=12> -
	<input type="text" name="Pnumber" size=12> </td>
</tr>

<tr>
	<td bgcolor="#ececec" align="center">�޴�����ȣ</td>
	<td>
		<select name="phone1">
			<option>010</option>
			<option>011</option>
			<option>016</option>
			<option>017</option>
		</select> - &nbsp;
		
		<input type="text" name="phone2" size=4> - &nbsp;
		<input type="text" name="phone3" size=4> &nbsp;
		<input type="button" name="phone4" value="������ȣ ��û" style="">
	</td>
</tr>

<tr>
<td bgcolor="#ececec" align="center">������ȣ</td>
<td><input type="text" maxlength="6"> &nbsp;
	<input type="button" value="Ȯ��"></td>
</tr>

<tr>
<td bgcolor="#ececec" align="center">�����ּ�</td>
<td><input type="button" value="�����ȣ ã��">
	<input type="text" name="address1" size=4> - &nbsp;
	<input type="text" name="address2" size=4><br>
	<input type="text" name="address3" size=50><br>
	<input type="text" name="address4" size=50></td>
</tr>
<tr>
<td bgcolor="#ececec" align="center">�̸��� �ּ�(����)</td>
<td><input type="text" size=15 name="email"> @ <select name="email2">
			<option>naver.com</option>
			<option>nate.com</option>
			<option>koria.com</option>
		</select> &nbsp; <input type="text" size=15 name="email3"></td>
</tr>


<tr>
	<td bgcolor="#ececec" align="center">���̵�</td>
	<td><input type="text" name="id" size=12 maxlength="12">
	<input type="button" name="id2" value="�ߺ��˻�"></td>
</tr>
<tr>
	<td bgcolor="#ececec" align="center">��й�ȣ</td>
	<td><input type="password" name="password" size=12 maxlength="12"></td>
</tr>
</table>

<h3>�ణ����</h3>
<input type="checkbox">��ü ����

<h4>PMart Mall ���(�ʼ�)</h4>
<p>PMart Mall����� �����մϴ�.</p>
<textarea cols="100" rows="10" disabled="disabled" style="resize:none;"><%@include file="terms/terms1.jsp" %></textarea><br>
<input type="radio">������ &nbsp; &nbsp; <input type="radio">���Ǿ��� <br><br><br>

<textarea cols="100" rows="10" disabled="disabled" style="resize:none;"><%@include file="terms/terms2.jsp" %></textarea><br>
<input type="radio">������ &nbsp; &nbsp; <input type="radio">���Ǿ��� <br><br><br>

<textarea cols="100" rows="10" disabled="disabled" style="resize:none;"><%@include file="terms/terms3.jsp" %></textarea><br>
<input type="radio">������ &nbsp; &nbsp; <input type="radio">���Ǿ��� <br><br><br>

<input type="submit" value="�����ϱ�">

</form>


</body>
</html>