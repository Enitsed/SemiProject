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
		<jsp:include page="../semiproject/header.jsp">
			<jsp:param value="${isMember }" name="isMember" />
			<jsp:param value="${memberInfo }" name="dto" />
		</jsp:include>

		<div id="templatemo_main">
			<div class="navbar container">
				<p class="">서울 강남구</p>
				<h1>카테고리</h1>
				<div class="list-group">
					<c:url var="category" value="board">
						<c:param name="category" value=""></c:param>
					</c:url>
					<a href="${category }" class="list-group-item">연애 
						<span class="label label-default">New</span>
					</a>
					<a href="${category }" class="list-group-item">스터디
						<span class="label label-default">New</span>
					</a>
					<a href="${category }" class="list-group-item">맛집
						<span class="label label-default">New</span>
					</a>
					<a href="${category }" class="list-group-item">질문게시판
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
							<a href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li>
							<a href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
				
				<div class="form-group">
					<form class="form-group">
						<select name="searchKey" class="form-control">
							<option value="all" selected="selected">검색어를 입력</option>
							<option value="subject">제목</option>
							<option value="content">내용</option>
							<option value="writer">글쓴이</option>
						</select> <input type="text" class="form-control" placeholder="검색할 글 입력" />
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