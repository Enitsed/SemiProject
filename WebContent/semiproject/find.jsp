<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통 : 아이디/비밀번호 결과</title>
<link href="../semiproject/templatemo_style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" href="../semiproject/css/orman.css"
	type="text/css" media="screen" />
<link rel="stylesheet" href="../semiproject/css/nivo-slider.css"
	type="text/css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="../semiproject/css/ddsmoothmenu.css" />

<!-- 로그인 css -->
<link rel="stylesheet" type="text/css" href="../css/login.css"
	media="screen" />
<script type="text/JavaScript" src="../js/common.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<div id="templatemo_main" align="center">
			<c:choose>
				<c:when test="${chk==3}">
					<form action="#" method="post" name="find_id" id="find_id">
						<fieldset align="center">
							<h1>아이디 찾기 결과</h1>
							<label for="user_id"> 아이디는 <%=session.getAttribute("user_id")%>
								입니다.
							</label>
							</p>
						</fieldset>
						</form>
						<button type="submit" class="btn btn-danger" id="okBtn"
				onclick="location.href='/semiproject/main/login'">확인</button>
				</c:when>
				
				<c:when test="${chk==4}">
					<form action="#" method="post" name="find_pw" id="find_pw">
						<fieldset align="center">
							<h1>비밀번호 찾기 결과</h1>
							<label for="user_pw"> 비밀번호는 <%=session.getAttribute("user_pw")%>
								입니다.
							</label>
							</p>
						</fieldset>
						</form>
						<button type="submit" class="btn btn-danger" id="okBtn"
				onclick="location.href='/semiproject/main/login'">확인</button>
				</c:when>
			</c:choose>
			<c:choose>
			<c:when test="${chk==5}">
				<script type="text/javascript">
					alert("해당 정보가 없습니다.");
					history.go(-1); //뒤로 가기
				</script>
			</c:when>
		</c:choose>
		</div>
	</div>
</body>
</html>