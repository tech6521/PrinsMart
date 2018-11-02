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
					<h3 class="box-title">read Posting Page</h3>
				</div>
				<!-- /.box-header -->
 				<!-- 
					...202p참조. form::action 속성이 지정되지 않으면 
					현재 경로를 그대로 action의 대상 경로로 잡음. 
				-->
				<form role="form" action="modifyPage" method="post">
				
					<!-- 299p. 페이징 처리에 대한 정보를 유지하도록 hidden 사용. -->
					<input type='hidden' name='page' value="${cri.page}"> 
					<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
 					<div class="box-body">
 						<div class="form-group">
							<label for="exampleInputEmail1">BNO</label> <input type="text"
								name='bno' class="form-control" value="${boardVO.bno}"
								readonly="readonly">
						</div>
 						<div class="form-group">
							<label for="exampleInputEmail1">Title</label> <input type="text"
								name='title' class="form-control" value="${boardVO.title}">
						</div>
 						<div class="form-group">
							<label for="exampleInputPassword1">Content</label>
							<textarea class="form-control" name="content" rows="3">${boardVO.content}</textarea>
						</div>
 						<div class="form-group">
							<label for="exampleInputEmail1">Writer</label> <input type="text"
								readonly="readonly" name="writer" class="form-control" value="${boardVO.writer}">
						</div>
					</div>
					<!-- /.box-body -->
 				</form>
 				<div class="box-footer">
					<button type="submit" class="btn btn-primary">SAVE</button>
					<button type="submit" class="btn btn-warning">CANCEL</button>
				</div>
				<!-- /.box-footer-->
 				<!-- 
					...228p.$("form[role='form']")로 선언된 formObj는 <form>태그를 의미함.
					$(".btn-warning")이벤트 처리는 지정한 페이지로 이동하도록 <form>태그 속성을
					수정하고 전송하게 함. 
				 -->
				 
				 
				 
				<script>
					$(document).ready(function() {
						var formObj = $("form[role='form']");
						console.log(formObj);
						$(".btn-warning").on("click", function() {
							self.location = "/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}";
						});
						$(".btn-primary").on("click", function() {
							formObj.submit();
						});
					});
				</script>
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
 	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
</script>
 <%@include file="../include/footer.jsp"%> 