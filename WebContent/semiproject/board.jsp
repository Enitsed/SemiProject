<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />

<script type="text/javascript">
$(document).ready(function() {
	var selectedCategory = "${category }";

	$.each($("a.list-group-item"), function(index) {
	    var selCategory = $(this).attr('href').substr(15);
	    if (selectedCategory===selCategory)
			$(this).addClass("active");
	})

});
</script>
		<div id="templatemo_main">
			<div class="navbar container">
				<ol class="breadcrumb" style="background-color: white">
				  <li><a href="/semiproject/main/*">Home</a></li>
				  <li><a href="?category=${requestScope.category }&searchKey=${requestScope.searchKey }&searchValue=${requestScope.searchValue }">게시판</a></li>
				  <li class="active">${location }</li>
				</ol>
				<div class="list-group">
					<c:url var="category" value="board">
						<c:param name="category"></c:param>
					</c:url>
					<a href="${category }연애" class="list-group-item">연애 
						<span class="label label-default">New</span>
					</a>
					<a href="${category }스터디" class="list-group-item">스터디
						<span class="label label-default">New</span>
					</a>
					<a href="${category }맛집" class="list-group-item">맛집
						<span class="label label-default">New</span>
					</a>
					<a href="${category }질문게시판" class="list-group-item">질문게시판
						<span class="label label-default">New</span>
					</a>
				</div>
			</div>

			<div class="article">
				<c:choose>
					<c:when test="${empty aList }">
						<h1>등록된 글이 없습니다</h1>
					</c:when>
					<c:otherwise>
						<c:forEach items="${requestScope.aList }" var="dto">
							<article>
								<c:url var="link" value="view">
									<c:param name="num" value="${dto.board_num}" />
								</c:url>
								
								<a href="${link}"> 
								<c:choose>
									<c:when test="${empty dto.board_upload }">
										<img src="../semiproject/images/noimage.gif" class="img-rounded" />
									</c:when>
									<c:otherwise>
										<img src="../semiproject/upload/${dto.board_upload }" class="img-rounded" />
									</c:otherwise>
								</c:choose>
								<span>[ ${dto.board_category}] ${dto.board_subject }</span>
								<span class="badge">${dto.board_readcount }</span>
								<span>${dto.board_date }</span>
								</a>
							</article>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				
				<hr class="clear" />

				<nav aria-label="Page navigation">
					<ul class="pagination">
						<li>
							<a href="?pageNum=${startPage }&category=${requestScope.category }&searchKey=${requestScope.searchKey }&searchValue=${requestScope.searchValue }" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<c:forEach begin="${startPage }" end="${endPage }" var="pageNum" >
							<li <c:if test="${pageNum eq param.pageNum }">class="active"</c:if>>
								<a <c:if test="${pageNum ne param.pageNum}">href="?pageNum=${pageNum }&category=${requestScope.category }&searchKey=${requestScope.searchKey }&searchValue=${requestScope.searchValue }"</c:if>>${pageNum}</a>
							</li>
						</c:forEach>
						<li>
							<a href="?pageNum=${endPage }&category=${requestScope.category }&searchKey=${requestScope.searchKey }&searchValue=${requestScope.searchValue }" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
				
				<div class="form-group">
					<form class="form-group" action="../main/board">
						<select name="searchKey" class="form-control">
							<option value="all" selected="selected">검색어를 입력</option>
							<option value="board_subject">제목</option>
							<option value="board_content">내용</option>
							<option value="user_id">글쓴이</option>
						</select>
						<input type="text" class="form-control" placeholder="검색할 글 입력" name="searchValue" />
						<input type="hidden" name="category" value="${requestScope.category }" />
						<button type="submit" class="btn btn-default" id="searchBtn">검색</button>
					</form>
					<c:if test="${isMember == true }">
						<a href="../semiproject/write.jsp" class="write"><button
								type="button" class="btn btn-success" id="writeBtn">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
								글 쓰기
							</button> </a>
					</c:if>
				</div>
			</div>

			<div class="clear"></div>

		</div>
	</div>
	<jsp:include page="../semiproject/footer.jsp"></jsp:include>

</body>
</html>