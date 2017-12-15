<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>서울</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<!-- end of templatemo_menu -->

		<div id="templatemo_main">
			<div class="container" style="max-width:750px">
				<div class="article">
					<h3>
						서울 강남구 <span class="label label-default">New</span>
					</h3>
					<div class="list-group">
						<c:forEach items="${aList }" var="dto">
						<a class="list-group-item">${dto.board_subject }</a>
						</c:forEach>
					</div>
				</div>
				<div class="article">
					<h3>
						서울 노원구 <span class="label label-default">New</span>
					</h3>
					<div class="list-group">
						<a class="list-group-item">1</a>
						<a class="list-group-item">2</a>
						<a class="list-group-item">3</a>
						<a class="list-group-item">4</a>
						<a class="list-group-item">5</a>
					</div>
				</div>
				<div class="article">
					<h3>
						서울 도봉구 <span class="label label-default">New</span>
					</h3>
					<div class="list-group">
						<a class="list-group-item">1</a>
						<a class="list-group-item">2</a>
						<a class="list-group-item">3</a>
						<a class="list-group-item">4</a>
						<a class="list-group-item">5</a>
					</div>
				</div>
				<div class="article">
					<h3>
						경기 <span class="label label-default">New</span>
					</h3>
					<div class="list-group">
						<a class="list-group-item">1</a>
						<a class="list-group-item">2</a>
						<a class="list-group-item">3</a>
						<a class="list-group-item">4</a>
						<a class="list-group-item">5</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<!-- END of templatemo_main -->
	<jsp:include page="../semiproject/footer.jsp" />
	<!-- END of templatemo_footer_wrapper -->
</body>
</html>