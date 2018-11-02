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
					<h3 class="box-title">listAll Posting Page</h3>
				</div>
				<!-- /.box-header -->
				
				<div class="box-body">
				
					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px">VIEWCNT</th>
						</tr>

 					<c:forEach items="${list}" var="boardVO">
					
						<tr>
							<td>${boardVO.bno}</td>
							<td><a href='/board/readPage${pageMaker.makeQuery(pageMaker.cri.page)
							}&bno=${boardVO.bno}'>
							${boardVO.title}</a>
							</td>
							<td>${boardVO.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${boardVO.regdate}" /></td>
							<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
						</tr>
					
					</c:forEach>					
					
					</table>				
				</div>
				<!-- /.box-body -->
 				<div class="box-footer">
 					<div class="text-center">
						<ul class="pagination">
 							<c:if test="${pageMaker.prev}">
								<li>
								<!-- 
									...276p.↓.
									<a href="/board/listPage?page=250">&laquo;</a>
								-->
									<a href="/board/listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
								</li>
							</c:if>
 							<c:forEach begin="${pageMaker.startPage }"
									   end="${pageMaker.endPage }" 
									   var="idx">
								<!-- 
									...277p.↓.li태그내의 서식을 동적으로 표현함.
									${pageMaker.cri.page}를 이용해서 getCriteria(), getPage()를 호출하여
									현재 페이지 번호만을 강조시킴.
								 -->									   
								<li <c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
								<a href="listPage${pageMaker.makeQuery(idx)}">${idx}</a>
								</li>
							</c:forEach>
 							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li>
														
									<a href="/board/listPage?page=${pageMaker.endPage + 1}">&raquo;</a>
								</li>
							</c:if>
 						</ul>
					</div>
 				</div>
				<!-- /.box-footer-->
				
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
    
    if(result == 'SUCCESS'){
    	alert("처리가 완료되었습니다.");
    }    
</script>

<form id ="jobForm">
	<input type="hidden" name="page" value=${pageMaker.cri.perPageNum}>
	<input type="hidden" name="perPageNum" value=${pageMaker.cri.perPageNum}>
</form>

<script type="text/javascript">
${".pagintion li a"}.on("click", function(event) {
	event.prevenDefault();
	
	var targetPage = $(this).attr("href");
	
	var jobForm = $("#jobForm");
	jobForm.find("[name='page']").val(targetPage);
	jobForm.attr("action","/board/listPage").attr("method", "get");
	jobForm.submit();
});
</script>
 <%@include file="../include/footer.jsp"%> 