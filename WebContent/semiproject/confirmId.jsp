<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<title>소통 : 아이디 중복 확인</title>
<style type="text/css">
#wrap {
	width: 490px;
	text-align: center;
	margin: 0 auto 0 auto;
}

#chk {
	text-align: center;
}
</style>
</head>
<body>
<div id="wrap">
		<br> <b><font size="4" color="gray">아이디 중복체크</font></b>
		<hr size="1" width="460">
		<br>
		<div id="chk">
<c:choose>
		<c:when test="${x==1}">
			<form id="checkForm" action="/semiproject/main/confirmId">
				<input type="text" name="id" id="userId"/> 
				<input
					type="submit" value="중복확인" onclick="idCheck()"/>
			</form>
			<div id="msg">
			<font color="red"> <%=session.getAttribute("confirmId")%> 는 이미 사용중인 아이디 입니다.</font>
			<br><b>다른 아이디를 입력해주세요.</b>
			</div>
			<br> 
			<input id="cancelBtn" type="button" value="취소"
				onclick="window.close()"><br>
		</c:when>
		<c:otherwise>
			<form id="checkForm" action="/semiproject/main/confirmId">
				<input type="text" name="id" id="userId"/> 
				<input
					type="submit" value="중복확인" onclick="idCheck()"/>
			</form>
			<div id="msg">
			<font color="blue"> <%=session.getAttribute("confirmId")%> 는 사용 가능한 아이디 입니다.</font>
			</div>
			<br> 
			<input id="useBtn"
				type="button" value="사용하기" onclick="sendCheckValue()">
		</c:otherwise>
		</c:choose>
	</div>
</div> 
<script type="text/javascript">
	// 아이디 중복체크
    function idCheck(){
        var id = document.checkForm.userId.value;
        if (!id) {
            alert("아이디를 입력하지 않았습니다.");
            return false;
        } /* 
        else if((id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z"))
        { 
            alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
            return false;
        } */
	} 
	
	//사용하기 클릭
	function sendCheckValue(){
        // 중복체크 결과인 idCheck 값을 전달한다.
        opener.document.memberInfo.idDuplication.value="idCheck";
        // 회원가입 화면의 ID입력란에 값을 전달
        opener.document.memberInfo.id.value = "<%= session.getAttribute("confirmId")%>";
        
        if (opener != null) {
            opener.chkForm = null;
            self.close();
        }    
    }
</script>
</body>
</html>