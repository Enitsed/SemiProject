<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>

</head>
<body>
	<div id="templatemo_wrapper">
		<!--header-->
		<jsp:include page="../semiproject/header.jsp"></jsp:include>

	<script type="text/javascript">
	    $(document).ready(function() {
		
			var getUrlParameter = function getUrlParameter(sParam) {
			    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
			        sURLVariables = sPageURL.split('&'),
			        sParameterName,
			        i;
			    for (i = 0; i < sURLVariables.length; i++) {
			        sParameterName = sURLVariables[i].split('=');
			        if (sParameterName[0] === sParam) {
			            return sParameterName[1] === undefined ? true : sParameterName[1];
			        }
			    }
			};
			var num = getUrlParameter('num');

			$('.list').on('click', function() {
			    $('form').attr('action', 'board');
			    $('form').submit();
			});
			$('.update').on('click', function() {
			    $('form').attr('action', 'update?num=' + num);
			    $('form').submit();
			});
			$('.delete').on('click', function(){
			    $('form').attr('action', 'delete?num=' + num);
			    $('form').submit();
			});
	    });
	</script>
	<c:choose>
		<c:when test="${empty dto }">
			<div id="templatemo_main">
				<h3> 회원이 아니면 글을 읽을 수 없습니다. 회원 가입을 해주세요. </h3>
			</div>
		</c:when>
		<c:otherwise>
		<!--상세보기폼 -->
		<table align="center" height="400">
			<tr>
				<td>
					<table width="400">
						<tr>
							<!--글번호-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">글번호:</td>
							<td width="0">${dto.board_num}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--작성일/조회수-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">작성일:</td>
							<td width="">${dto.board_date}</td>
							<td align="center" width="100">조회수: ${dto.board_readcount}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--아이디-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">아이디:</td>
							<td width="319">${dto.user_id}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--제목-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">제목:</td>
							<td width="319">${dto.board_subject}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--첨부파일-->
							<td width="0">&nbsp;</td>
							<td align="center" width="140">첨부파일:</td>
							<td width="319"><a href="download?num=${dto.board_num}">${dto.board_upload}</a></td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--글내용-->
							<td width="0">&nbsp;</td>
							<td width="399" colspan="2" height="200">${dto.board_content}
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr height="1" bgcolor="#82B5DF">
							<td colspan="4" width="407"></td>
						</tr>
						<tr align="center">
							<!--목록/수정/삭제 버튼  -->
							<td width="0">&nbsp;</td>
							<td colspan="2" width="399">
								<form name="frm" method="post"
									enctype="application/x-www-form-urlencoded">
									<input type=button class="list" value="목록"> 
									<c:if test="${isWriter == true}">
										<input type=button class="update" value="수정">
										<input type=button class="delete" value="삭제">
									</c:if>
								</form>
							<td width="0">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</c:otherwise>
	</c:choose>
	</div>

	<!--footer-->
	<jsp:include page="../semiproject/footer.jsp"></jsp:include>
</body>
</html>