<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title> ´ñ±Û ´äº¯ </title>
	
	<style type="text/css">
		#wrap {
			width: 550px;
			margin: 0 auto 0 auto;
			text-align :center;
		}
	
		#commentUpdateForm{
			text-align :center;
		}
	</style>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		/* $(document).ready(function(){
				$('.modify').on('click', function(){
					$('#updateInfo').attr('action', 'reply_modify');
					$('#updateInfo').submit();					
					setTimeout("window.close()", 5000);
				});	
		}); */
		
		function modify_close(){
			/* setTimeout("window.close()", 5000); */
			$('#updateInfo').attr('action', 'reply_modify');
			$('#updateInfo').submit();
			opener.parent.location.reload();
			window.close();
		}
	</script>
	
</head>
<body>
<div id="wrap">
	<br>
	<b><font size="5" color="gray">´ñ±Û¼öÁ¤</font></b>
	<hr size="1" width="550">
	<br>

	<div id="commentUpdateForm">
		<form id="updateInfo" name="updateInfo">		
			<textarea rows="7" cols="70" name="comment_content">${replydto.reply_content}</textarea>
			<input type="hidden" id="modify_num" name="modify_num" value="${replydto.reply_num}">
			<br><br>
			<input type="submit" class="modify" value="µî·Ï" onclick="modify_close()">
			<input type="button" value="Ã¢´Ý±â" onclick="window.close()">
		</form>
	</div>
</div>	
</body>
</html>