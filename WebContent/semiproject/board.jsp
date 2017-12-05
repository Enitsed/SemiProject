<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
    });
</script>
<style type="text/css">
/* 게시판 글 목록 */
.article {
	width: 80%;
	float: left;
	padding: 30px;
}

article {
	width: 220px;
	height: 200px;
	float: left;
	margin: 20px;
	margin-bottom: 150px;
	padding: 5px;
}

article img {
	width: 100%;
	max-width: 400px;
	vertical-align: middle;
	margin: 5px;
}

article a p {
	padding-left: 5px;
}

.clear {
	margin: 0px;
	clear: both;
}

/* 게시판 폼 */
.form-group {
	width: 550px;
	margin: auto;
	padding: 10px;
}

.form-control {
	width: 200px;
	display: inline;
}

/* 글쓰기버튼 */
.write {
	float: right;
}

/* 페이지네이션 */
nav {
	width: 250px;
	height: 50px;
	padding: 5px;
	margin: auto;
}

/* 카테고리 리스트 */
.navbar {
	width: 20%;
	height: 100%;
	height: -moz-available;
	/* WebKit-based browsers will ignore this. */
	height: -webkit-fill-available;
	/* Mozilla-based browsers will ignore this. */
	float: left;
}

/* 카테고리 리스트 배지*/
.label-default {
	background-color: orange;
}
</style>

</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1>커뮤니티</h1>
			<p>설명</p>
		</div>
	</div>
	<div class="navbar container">
		<p class="">서울 강남구</p>
		<h1>카테고리</h1>
		<div class="list-group">
			<a href="#" class="list-group-item">연애 <span
				class="label label-default">N</span></a> <a href="#"
				class="list-group-item">스터디 <span class="label label-default">New</span></a>
			<a href="#" class="list-group-item">맛집 <span
				class="label label-default">New</span></a> <a href="#"
				class="list-group-item">질문게시판 <span class="label label-default">New</span></a>
		</div>

	</div>
	<div class="article">
		<c:forEach items="${requestScope.aList }" var="dto">
			<article>
				<a href="#"> <img src="../semiproject/images/himalayan.jpg"
					class="img-rounded" /> ${dto.board_subject } <span class="badge">${dto.board_readcount }</span>
					${dto.board_date }
				</a>
			</article>
		</c:forEach>

		<hr class="clear" />

		<nav aria-label="Page navigation">
			<ul class="pagination">
				<li><a href="#" aria-label="Previous"> <span
						aria-hidden="true">&laquo;</span>
				</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
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
			<a href="writeForm.do" class="write"><button type="button"
					class="btn btn-success" id="writeBtn">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
					글 쓰기
				</button> </a>
		</div>
	</div>


</body>
</html>