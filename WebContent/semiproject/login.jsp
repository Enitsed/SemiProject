<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통 : 로그인</title>

<style type="text/css">
.form-horizontal {
	margin: 5px auto;
	margin-top: 200px;
	border: 1px solid black;
	width: 240px;
	height: 200px;
	padding: 20px;
}

#inputEmail3 {
	width: 200px;
}

#inputPassword3 {
	width: 200px;
}
</style>
</head>
<body>

	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<!-- end of templatemo_menu -->
		<script type="text/javascript">
	    $(document).on("load", function() {

		$('#signUp').on('click', function() {
		    location.href = '/semiproject/board/join';
		});
	    });
	</script>
		<div id="templatemo_main" align="center">
			<form action="/semiproject/main/login_check" method="post"
				name="log_f" id="login_f">
				<fieldset style="width: 500px; height: 380px" align="center">
					<h1>
						<a href="#"><img src="../semiproject/images/loginlogo.png"
							alt="로그인로고" /></a>
					</h1>
					<p class="user_id" align="center">
						<label for="id"> </label> <input type="text" name="id" id="id"
							style="width: 400px; height: 50px; letter-spacing: 0px"
							placeholder="아이디" />
					</p>
					<p class="user_pw" align="center">
						<label for="user_pw"> </label> <input type="password"
							name="password" id="password"
							style="width: 400px; height: 50px; letter-spacing: 0px"
							placeholder="비밀번호" />
					</p>
					<p class="log_btn" align="center">
						<input type="image" src="../semiproject/images/login_btn.gif"
							alt="로그인버튼" width="400px" height="50px" id="log_btn" />
					</p>
					<p>
						<input type="checkbox" name="save_id" id="save_id" /> <label
							for="save_id"> 비밀번호 저장</label>
					</p>
					<hr>
					<br>
					<p class="join_btn_wrap">
						<span> <a href="#" class="sch_id_btn">아이디/비밀번호 찾기</a>
							&nbsp;&nbsp;/&nbsp;&nbsp;
						</span> <a href="#" id="inputform">회원가입</a>
					</p>
				</fieldset>
			</form>
		</div>
		<!-- END of templatemo_main -->
	</div>
	<!-- END of templatemo_wrapper -->
	<jsp:include page="../semiproject/footer.jsp" />
	<!-- END of templatemo_footer_wrapper -->
</body>
</html>