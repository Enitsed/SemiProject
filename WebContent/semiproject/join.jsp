<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
select {
	margin: 5px;
}

.radio-inline {
	margin: 20px !important;
}

.btn {
	width: 30%;
}

.cancelBtn {
	float: right;
}
</style>
<script type="text/javascript">
    $(document).ready(function() {

    });
</script>
</head>
<body>
	<div class="jumbotron">
		<div class="container">
			<h1>회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form>
			<div class="form-row">
				<div class="form-group col-md-6">
					<label for="inputId">아이디</label> <input type="text"
						class="form-control" id="inputId" placeholder="ID" name="value">
				</div>
				<div class="form-group col-md-6">
					<label for="inputPassword">비밀번호</label> <input type="password"
						class="form-control" id="inputPassword" placeholder="Password">
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-12">
					<label for="inputName">이름</label> <input type="text"
						class="form-control" id="inputPassword" placeholder="이름">
				</div>
				<div class="form-group col-md-6">
					<label for="inputGender">성별</label> <br /> <label
						class="radio-inline"> <input type="radio"
						name="inputGender" id="inlineGender" value="male"> 남자
					</label> <label class="radio-inline"> <input type="radio"
						name="inputGender" id="inputGender" value="female"> 여자
					</label>
				</div>
				<div class="form-group col-md-6">
					<label for="inputState">지역</label> <select id="inputState"
						class="form-control">
						<option selected>서울</option>
						<option>...</option>

					</select> <select id="inputState" class="form-control">
						<option selected>노원구</option>
						<option>...</option>
					</select>
				</div>

				<div class="form-group col-md-6">
					<label for="inputName">생년월일</label> <input type="text"
						class="form-control" id="inputPassword" placeholder="생년월일">
				</div>
				<div class="form-group col-md-6">
					<label for="inputName">연락처</label> <input type="text"
						class="form-control" id="inputPassword" placeholder="연락처">
				</div>
				<div class="form-group col-md-6">
					<label for="inputEmail">Email</label> <input type="email"
						class="form-control" id="inputEmail" placeholder="Email">
				</div>

			</div>
			<div class="form-group col-md-12">
				<div class="form-check">
					<label class="form-check-label"> <input
						class="form-check-input" type="checkbox"> 가입 약관에 동의
					</label>
				</div>
				<button type="submit" class="btn btn-success">회원가입</button>
				<button type="submit" class="btn btn-danger cancelBtn">취소</button>
			</div>

		</form>
	</div>
</body>
</html>