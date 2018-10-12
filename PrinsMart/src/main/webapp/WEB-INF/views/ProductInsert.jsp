<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
<script type="text/javascript">
$(document).ready(function(){
    // 상품 등록 유효성검사
    $("#addBtn").click(function(){
        var productName = $("#productName").val();
        var productPrice = $("#productPrice").val();
        var productDesc = $("#productDesc").val();
        var productPhoto = $("#productPhoto").val();

        if(productName == "") {
            alert("상품명을 입력해주세요");
            productName.foucs();
        } else if (productPrice == "") {
            alert("상품 가격을 입력해주세요");
            productPrice.focus();
        } else if (productDesc == "") {
            alert("상품 설명을 입력해주세요");
            productDesc.focus();
        } else if (productPhoto == "") {
            alert("상품 사진을 입력해주세요");
            productPhoto.focus();
        }
        // 상품 정보 전송
        document.form1.action = "${path}/shop/product/insert.do";
        document.form1.submit();
    });
    // 상품 목록이동
    $("#listBtn").click(function(){
        location.href='${path}/shop/product/list.do';
    });
});

</script>



<%@include file="include/header.jsp" %>


</head>
<body>
<h2>상품 등록</h2>
<form id="form1" name="form1" enctype="multipart/form-data" method="post">
    <table border="1">
        <tr>
            <td>상품명</td>
            <td><input type="text" name="productName" id="productName"></td>
        </tr>
        <tr>
            <td>가격</td>
            <td><input type="text" name="productPrice" id="productPrice"></td>
        </tr>
        <tr>
            <td>상품설명</td>
            <td><textarea rows="5" cols="60" name="productDesc" id="productDesc"></textarea></td>
        </tr>
        <tr>
            <td>상품이미지</td>
            <td><input type="file" name="productPhoto" id="productPhoto"></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" value="등록" id="addBtn">
                <input type="button" value="목록" id="listBtn">
            </td>
        </tr>
    </table>
</form>



</body>
</html>