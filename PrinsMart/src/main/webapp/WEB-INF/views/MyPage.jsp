<!doctype html>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 

<html lang="ko">
<head>
<title>Prins Mall 마이페이지</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/cs1/MyPage.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>






</head>
<body>
<%@include file="include/header.jsp" %>
<br>
<br>
<hr class="MyPageLine">
<p> &nbsp; &nbsp; &nbsp;  홈 > <b>prins Mall 마이페이지</b></p>
<div class="MyPage">

<div class="MyPageLeftBar">
	<div class="MyPageLeftBar-Title">prins Mall 마이페이지</div>
	<ul class="MyPageUL">
		<li class="List-title">나의 쇼핑수첩</li>
		<li> <a href="#">주문/배송조회</a></li>
		<li> <a href="#">취소/반품조회</a></li>
		<li> <a href="#">배송자 관리</a></li>
	</ul>
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 쇼핑 해택</li>
		<li> <a href="#">쿠폰함</a></li>
		<li> <a href="#">적립쿠폰</a></li>
	</ul>
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 상품</li>
		<li> <a href="#">최근 구매 상품</a></li>
		<li> <a href="#">찜한 상품</a></li>
	</ul>
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 활동</li>
		<li> <a href="#">상품평</a></li>
		<li> <a href="#">배송평가</a></li>
		<li> <a href="#">1:1문의</a></li>
		<li> <a href="#">나의문의내역</a></li>
		<li> <a href="#">이벤트</a></li>
	</ul>
	
	<hr>
	<ul class="MyPageUL">
		<li class="List-title">나의 정보</li>
		<li><form action="MyUser" method="POST">
		<input type="hidden" value="${vo.id}">
		<input type="submit" class = "btn btn-info" value="회원정보변경">
		</form>
		</li>
		
		
		<li> <a href="#">개인정보 이용내역</a></li>
	</ul>
	
</div>


<div class="MyPageTopBar">
<table>
<tr>
<th>이름</th>
<th></th>
</tr>

</table>



<canvas id="myChart" width="100%" height="50%">

</canvas>

<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["방문 수", "하루 방문 수", "구매휫수"],
        datasets: [{
            label: '${vo.id}님의 차트',
            data: ['${vo.visit}', 19, 3],
            backgroundColor: [
                'rgba(255, 120, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)'
                
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)'
            ],
            borderWidth: 2
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>

</div>


</div>



</body>
</html>