<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소통 : ID / PassWord 찾기</title>
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
<link rel="stylesheet" href="../semiproject/css/slimbox2.css"
	type="text/css" media="screen" />
<script type="text/JavaScript" src="../semiproject/js/slimbox2.js"></script>
<!--  t e m p l a t e m o  372  t i t a n i u m  -->
<style type="text/css">
select {
	margin: 5px;
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
	    alert("메인화면으로 돌아갑니다.");
	    $('form').attr('action', '/semiproject/main/*');
	    $('form').submit();
	});
	//아이디 찾기
	$('#findId').on('click', function() {
		if($('#findId_name').val( )==''){
			alert("아이디 찾기 : 이름을 입력해주세요.");
			document.findId.findId_name.focus();
			return false;
		}
		if($('#findID_contact').val( )==''){
			alert("아이디 찾기 : 연락처를 입력해주세요.");
			document.findId.findID_contact.focus();
			return false;
		}
	    $('form').attr('action', '/semiproject/main/findid');
	    $('form').submit();
	});
	
	//비밀번호 찾기
	$('#findPw').on('click', function() {
		if($('#findPw_id').val( )==''){
			alert("비밀번호 찾기 : 아이디를 입력해주세요.");
			document.findPw.findPw_id.focus();
			return false;
		}
		if($('#findPW_name').val( )==''){
			alert("비밀번호 찾기 : 비밀번호를 입력해주세요.");
			document.findPw.findPW_name.focus();
			return false;
		}
	    $('form').attr('action', '/semiproject/main/findpw');
	    $('form').submit();
	});
	
 }); 
    
	/* function Check_pw(){
		if(document.findPw.findPw_id.value==""){
			alert("비밀번호 찾기 : 아이디를 입력해주세요.");
			document.findPw.findPw_id.focus();
			return false;
		}
		if (document.findPw.findPW_name.value == "") {
			alert("비밀번호 찾기 : 이름을 입력해주세요.");
			document.findPw.findPW_name.focus();
			return false;
		}
		document.findId.submit(); 
	}; */
</script>
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp"></jsp:include>

		<div id="templatemo_main" style="width:800px; height:600px">
			<form name="findId" method="post"
				action="#">
				<fieldset>
					<h1>아이디 찾기</h1>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="findId_name">이름</label> 
							<input type="text"
								class="form-control" id="findId_name" placeholder="이름" name="findId_name" />
						</div>
						<div class="form-group col-md-6">
							<label for="findID_contact">연락처</label> 
							<input type="text"
								class="form-control" id="findID_contact" placeholder="숫자만 입력해주세요."
								name="findID_contact" />
						</div>
						<button type="submit" class="btn btn-success" id="findId"
						style="width:100px; height:100px">찾기</button>
					</div>
					</fieldset>
				</form>
				<hr>
				<form name="findPw" method="post"
				action="#">
				<fieldset>
					<h1>비밀번호 찾기</h1>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="findPw_id">아이디</label> 
							<input type="text"
								class="form-control" id="findPw_id" placeholder="ID" name="findPw_id" />
						</div>
						<div class="form-group col-md-6">
							<label for="findPW_name">이름</label> 
							<input type="text"
								class="form-control" id="findPW_name" placeholder="이름" name="findPW_name" />
						</div>
					<button type="submit" class="btn btn-success" id="findPw"
					style="width:100px; height:100px">찾기</button>
				</div>
				</fieldset>
			</form>
			<br>
			<button type="submit" class="btn btn-danger" id="cancelBtn">취소</button>
		</div>
	</div>
</body>
</html>