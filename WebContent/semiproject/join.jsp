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
<link href="../semiproject/templatemo_style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" href="../semiproject/css/orman.css"
	type="text/css" media="screen" />
<link rel="stylesheet" href="../semiproject/css/nivo-slider.css"
	type="text/css" media="screen" />

<link rel="stylesheet" type="text/css"
	href="../semiproject/css/ddsmoothmenu.css" />

<script type="text/javascript" src="../semiproject/js/jquery.min.js"></script>
<script type="text/javascript" src="../semiproject/js/ddsmoothmenu.js">
    /***********************************************
     * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
     * This notice MUST stay intact for legal use
     * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
     ***********************************************/
</script>

<script language="javascript" type="text/javascript">
    ddsmoothmenu.init({
	mainmenuid : "templatemo_menu", //menu DIV id
	orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname : 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
    })

    function clearText(field) {
	if (field.defaultValue == field.value)
	    field.value = '';
	else if (field.value == '')
	    field.value = field.defaultValue;
    }
</script>

<link rel="stylesheet" href="../semiproject/css/slimbox2.css"
	type="text/css" media="screen" />
<script type="text/JavaScript" src="../semiproject/js/slimbox2.js"></script>
<!--  t e m p l a t e m o  372  t i t a n i u m  -->
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

#cancelBtn {
	float: right;
}
</style>
<script type="text/javascript">
    $(document).ready(function() {
	$('#cancelBtn').on('click', function() {
	    alert("회원가입을 취소하셨습니다.");
	    $('form').attr('action', '/semiproject/main/board');
	    $('form').submit();
	});
    });
</script>
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp"></jsp:include>

		<div id="templatemo_main">
			<form name="memberInfo" method="post"
				action="/semiproject/main/signup">
				<fieldset>
					<legend>회원가입 정보 입력</legend>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="id">아이디</label> <input type="text"
								class="form-control" id="id" placeholder="ID" name="id" />
						</div>
						<div class="form-group col-md-6">
							<label for="password">비밀번호</label> <input type="password"
								class="form-control" id="password" placeholder="Password"
								name="password" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="name">이름</label> <input type="text"
								class="form-control" id="name" placeholder="이름" name="name" />
						</div>
						<div class="form-group col-md-6">
							<label for="gender">성별</label> <br /> <label
								class="radio-inline"> <input type="radio" name="gender"
								id="gender" value="male" checked /> 남자
							</label> <label class="radio-inline"> <input type="radio"
								name="gender" id="gender" value="female" /> 여자
							</label>
						</div>
						<div class="form-group col-md-6">
							<label for="inputState">지역</label> <select id="inputState"
								class="form-control" name="city">
								<option value="서울" selected>서울</option>
								<option>...</option>

							</select> <select id="inputState" class="form-control" name="district">
								<option value="노원구" selected>노원구</option>
								<option>...</option>
							</select>
						</div>
						<div class="form-group col-md-6">
							<label for="birth">생년월일</label> <input type="text"
								class="form-control" id="birth" placeholder="생년월일 (숫자만 입력)"
								name="birth" />
						</div>
						<div class="form-group col-md-6">
							<label for="contact">연락처</label> <input type="text"
								class="form-control" id="contact" placeholder="연락처 (숫자만 입력)"
								name="contact" />
						</div>
						<div class="form-group col-md-6">
							<label for="email">Email</label> <input type="email"
								class="form-control" id="email" placeholder="Email" name="email" />
						</div>
					</div>
				</fieldset>
				<div class="form-group col-md-12">
					<div class="form-check">
						<label class="form-check-label"> <input
							class="form-check-input" type="checkbox" name="agree" /> 가입 약관에
							동의
						</label>
					</div>
					<button type="submit" class="btn btn-success">회원가입</button>
					<button type="submit" class="btn btn-danger" id="cancelBtn">취소</button>
				</div>

			</form>
		</div>
	</div>
	<jsp:include page="/semiproject/footer.jsp"></jsp:include>

</body>
</html>