<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		$('.list').on('click', function() {
		    $('form').attr('action', 'board');
		    $('form').submit();
		});
	    });
	</script>
		<!--상세보기폼 -->
		<table align="center">
			<tr>
				<td>
					<table width="100%" cellpadding="0" cellspacing="0" border="0">
						<tr
							style="background: url('img/table_mid.gif') repeat-x; text-align: center;">
							<td width="5"><img src="img/table_left.gif" width="5"
								height="30" /></td>
							<td>내 용</td>
							<td width="5"><img src="img/table_right.gif" width="5"
								height="30" /></td>
						</tr>
					</table>

					<table width="413">
						<tr>
							<!--글번호-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">글번호</td>
							<td width="319">${dto.board_num}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--조회수-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">조회수</td>
							<td width="319">${dto.board_readcount}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--아이디-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">아이디</td>
							<td width="319">${dto.user_id}</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--작성일-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">작성일</td>
							<td width="319">${dto.board_date }</td>
							<td width="0">&nbsp;</td>
						</tr>
						<tr height="1" bgcolor="#dddddd">
							<td colspan="4" width="407"></td>
						</tr>
						<tr>
							<!--제목-->
							<td width="0">&nbsp;</td>
							<td align="center" width="76">제목</td>
							<td width="319">${dto.board_subject}</td>
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
									<input type=button class="list" value="목록"> <input
										type=button class="update" value="수정"> <input
										type=button class="delete" value="삭제">
								</form>
							<td width="0">&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>

	<!--footer-->
	<jsp:include page="../semiproject/footer.jsp"></jsp:include>
</body>
</html>