<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
	<title>PrinsMart</title>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	


<%@ include file="../include/header.jsp" %>
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
				<div class='box-body'>
					<!-- 
						...310p.
						value / 의미
						n / 검색조건 없음.
						t / 제목으로 검색.
						c / 내용으로 검색.
						w / 작성자로 검색.
						tc / 제목 or 내용으로 검색.
						cw / 내용 or 작성자로 검색.
						tcw / 제목 or 내용 or 작성자로 검색. 
					-->
					<select name="searchType">
						<option value="n"
							<c:out value="${cri.searchType == null?'selected':''}"/>>
							---
						</option>
						<option value="t"
							<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
							Title
						</option>
						<option value="c"
							<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
							Content
						</option>
						<option value="w"
							<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
							Writer
						</option>
						<option value="tc"
							<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
							Title OR Content
						</option>
						<option value="cw"
							<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
							Content OR Writer
						</option>
						<option value="tcw"
							<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
							Title OR Content OR Writer
						</option>
					</select>
					
					<input type="text" name='keyword' id="keywordInput"
										value='${cri.keyword }'>
					<button id='searchBtn'>Search</button>
					<button id='newBtn'>New Board</button>

				</div>
			</div>

			<div class="box">
				<div class="box-header with-border">
					<h3 class="box-title" align="center">prinsmart 게시판</h3>
				</div>
				<div class="box-body">
					<button type="submit" class="btn btn-info" style="width: 80px;margin-left: 83%;margin-bottom: 0.5%">글쓰기</button>
					<table class="table table-bordered" style="width:80%;margin-left: 5%" >
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
								
								<td><a href='/sboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${boardVO.bno}'>
										${boardVO.title}
									</a>
								</td>
							<td>${boardVO.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${boardVO.regdate}" /></td>
							<td><span class="badge bg-red">${boardVO.viewcnt }</span></td>
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
									<a href="/board/listPage?page=${pageMaker.startPage - 1}">&laquo;</a>
									
									...288p.↓.페이지정보를 유지하게 함.
									...★'?page='가 필요없음에 주의할 것.
									<a href="/board/listPage?page=?page=250&perPageNum=10">&laquo;</a>									
									<a href="/board/listPage?page=${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a>
								 -->
									<a href="/sboard/list${pageMaker.makeSearch(pageMaker.startPage - 1)}">&laquo;</a>
									<!-- startPage : ${pageMaker.makeQuery(pageMaker.startPage - 1)} -->
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
								<!-- 
									...277p.↓.
									<a href="listPage?page=${idx}">${idx}</a>
									...287p.↓.
									<a href="/board/listPage?page=251&perPageNum=10">251</a>
									<a href="/board/listPage${pageMaker.makeQuery(idx)}">${idx}</a>
								 -->
									<a href="/sboard/list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>
 							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
 								<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1) }">&raquo;</a></li>
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
    
    if(result == 'success'){
    	alert("처리가 완료되었습니다.");
    }  
    
	$(document).ready(function() {
		var formObj = $("form[role='form']");
		console.log(formObj);
		$(".btn-info").on("click", function() {
			self.location = "/board/register";
		});
	});

</script>
 <script>    
    $(".pagination li a").on("click", function(event){
    //...290p.선택사항.
    //   http://cafe.naver.com/gugucoding/2634
    //   jQuery 로 처리하려면, 페이지목록을 276p 처럼 해야 함. 
    })    
</script>

<script>
	$(document).ready(
			function() {
				$('#searchBtn').on(
						"click",
						function(event) {
							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();
						});
				$('#newBtn').on("click", function(evt) {
					self.location = "register";
				});
			});
</script>
 <%@include file="../include/footer.jsp"%> 