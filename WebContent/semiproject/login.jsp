<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
<script type="text/javascript">
    $(document).ready(function() {
	$('#signUp').on('click', function() {
	    location.href = '/semiproject/board/join';
	});
    });
</script>
</head>
<body>
	<form class="form-horizontal" action="/semiproject/main/login_check"
		method="post">
		<div class="form-group">
			<div class="col-sm-10">
				<input type="text" class="form-control" id="id" name="id"
					placeholder="ID">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-10">
				<input type="password" class="form-control" id="password"
					name="password" placeholder="Password">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<div class="checkbox">
					<label> <input type="checkbox"> 아이디 저장
					</label>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">로그인</button>
				<button type="button" class="btn btn-success" id="signUp">회원가입</button>
			</div>
		</div>
	</form>
</body>
</html>