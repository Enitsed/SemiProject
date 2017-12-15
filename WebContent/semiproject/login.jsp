<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통 : 로그인</title>
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
	//아이디 비밀번호 입력 하지 않았을 시 알림창 
	function Check(){
		if(document.log_f.user_id.value==""){
			alert("아이디를 입력해주세요.");
			document.form.user_id.focus();
			return false;
		}
		if (document.log_f.user_pw.value == "") {
			alert("비밀번호를 입력해주세요.");
			document.frm.user_pw.focus();
			return false;
		}
		document.log_f.submit(); 
	};
</script>
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<div id="templatemo_main" align="center">
			<form action="/semiproject/main/login_check" method="post" name="log_f" id="login_f">
				<fieldset style="width: 500px; height: 380px" align="center">
					<h1>
						<img src="../semiproject/images/loginlogo.png" alt="로그인로고" />
					</h1>
					<p class="user_id" align="center">
						<label for="user_id"> </label> <input type="text" name="user_id"
							id="user_id"
							style="width: 400px; height: 50px; letter-spacing: 0px"
							placeholder="아이디" />
					</p>
					<p class="user_pw" align="center">
						<label for="user_pw"> </label> <input type="password"
							name="user_pw" id="user_pw"
							style="width: 400px; height: 50px; letter-spacing: 0px"
							placeholder="비밀번호" />
					</p>
					<p class="log_btn" align="center">
						<input type="image" src="../semiproject/images/login_btn.gif" alt="로그인버튼"
							width="400px" height="50px" id="log_btn"/>
					</p>
					<p>
						<input type="checkbox" name="save_id" id="save_id" /> <label
							for="save_id"> 아이디 저장</label>
					</p>
					<hr>
					<br>
					<p class="join_btn_wrap">
					<span>
						<a href="../semiproject/findIdPw.jsp" class="sch_id_btn">아이디/비밀번호 찾기</a> 
						&nbsp;&nbsp;/&nbsp;&nbsp;</span>
						<a href="../main/join" id="inputform">회원가입</a>
					</p>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>