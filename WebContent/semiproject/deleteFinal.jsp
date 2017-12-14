<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통 : 탈퇴완료</title>
<link href="../semiproject/templatemo_style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" href="../semiproject/css/orman.css"
	type="text/css" media="screen" />
<link rel="stylesheet" href="../semiproject/css/nivo-slider.css"
	type="text/css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="../semiproject/css/ddsmoothmenu.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/JavaScript" src="../js/common.js"></script>
</head>
<body>
	<%
		String user_id = (String) session.getAttribute("logOk");
		String user_pw = request.getParameter("identify_pw");

		UserDAO dao = UserDAO.getInstance();
		int ok = dao.deleteMem(user_id, user_pw);

		if(ok == 1){
			session.invalidate();
	%>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<form action="/semiproject/main/*" method="post">
		<div id="templatemo_main" align="center">
			<h1>탈퇴가 완료되었습니다.</h1>
			<h3> 10초후 자동으로 메인 홈페이지로 이동됩니다.</h3>
			<meta http-equiv="Refresh" content="10;url=*">
			<button type="submit" class="btn btn-success" id="main_back">메인 홈페이지로 돌아가기</button>
		</div>
		</form>
	</div>
	<%
		}
		else{
	%>
	<script type="text/javascript">
		alert("비밀번호가 맞지 않습니다.");
		history.go(-1); //뒤로 가기
	</script>

	<%
		}
	%>
	<%-- <c:choose>
				<c:when test="${ok==1}">
					<script type="text/javascript">
						session.invalidate();
						alert("탈퇴가 완료되었습니다.");
						HttpServletResponse.sendRedirect("/semiproject/main/*");
					</script>
				</c:when>
				<c:otherwise>
					<script type="text/javascript">
						alert("비밀번호가 맞지 않습니다.");
						history.go(-1); //뒤로 가기
					</script>
				</c:otherwise>
			</c:choose> --%>

</body>
</html>