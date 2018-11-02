<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<title>PrinsMart</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
 <%@include file="../include/header.jsp"%>
 <!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
 			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title" align="center">prinsmall 커뮤니티 게시판</h3>
					<br>
					<br>
				</div>
				<!-- /.box-header -->
				
				<div class="box-body">
					
					<button type="submit" class="btn btn-info" style="width: 80px;margin-left: 83%;margin-bottom: 0.5%">글쓰기</button>
					
					<script>
					$(document).ready(function() {
						var formObj = $("form[role='form']");
						console.log(formObj);
						$(".btn-info").on("click", function() {
							self.location = "/board/register";
						});
					});
				</script>
					
					
					<table class="table table-bordered" style="width: 80%;margin-left: 10%">
						<tr>
							<th style="width: 20px">BNO</th>
							<th>제목</th>
							<th>작성자(익명)</th>
							<th>작성 일시</th>
							<th style="width: 40px">VIEWCNT</th>
						</tr>
					
					<c:forEach items="${list}" var="borderVO">
					
						<tr>
							<td>${borderVO.bno}</td>
							<td><a href="/board/read?bno=${borderVO.bno}">${borderVO.title}</a></td>
							<td>${borderVO.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${borderVO.regdate}"/></td>
							<td><span class="badge bg-red">${borderVO.viewcnt}</span></td>
						</tr>
					</c:forEach>
					</table>				
				</div>
				<!-- /.box-body -->
				
				
				
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
 <script>    
    var result = '${msg}';
    
    if(result == 'success'){
    	alert("처리가 완료되었습니다.");
    }    
</script>
 <%@include file="../include/footer.jsp"%> 