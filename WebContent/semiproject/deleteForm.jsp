<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통 : 탈퇴</title>
<link href="../semiproject/templatemo_style.css" rel="stylesheet"
	type="text/css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="../semiproject/css/orman.css"
	type="text/css" media="screen" />
<link rel="stylesheet" href="../semiproject/css/nivo-slider.css"
	type="text/css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="../semiproject/css/ddsmoothmenu.css" />
	
<script type="text/JavaScript" src="../js/common.js"></script>
<script type="text/javascript">
/* $(document).ready(function(){
	var ok= '${sessionScope.ok}';
	if(ok=='0'){
		alert('비밀번호가 맞지않습니다.');
	}
	
	$('form').submit( function( ){
		if($('#identify_pw').val( )==''){
			alert('비밀번호를 입력하세요.');
			document.deleteForm.user_pw.focus();
			return false;
		}
	});
}); */
function check() {
		if (!document.deleteForm.user_pw.value) {
			alert("비밀번호를 입력해주세요.");
			document.deleteForm.user_pw.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<div id="templatemo_main" align="center">
			<form action="/semiproject/main/delete_final" method="post"
				name="deleteForm" id="deleteForm" onSubmit="return check()">
				<fieldset align="center">
					<h1>
						회원탈퇴 화면
						<hr>
						비밀번호를 입력해주세요.
					</h1>
					<input type="password" class="form-control" placeholder="비밀번호"
						name="identify_pw" id="identify_pw"/>
				</fieldset>
				<br>
				<button type="submit" class="btn btn-success" id="delete_ok">확인</button>
			<button type="button" class="btn btn-danger" onclick="history.go(-1);">취소</button>
			</form>
		</div>
	</div>
</body>
</html>