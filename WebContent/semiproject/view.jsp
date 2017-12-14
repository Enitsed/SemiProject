<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글 조회</title>

</head>
<body>
	<div id="templatemo_wrapper" align="center">
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

			// 게시판
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
			
			// 댓글
			$('.reply').on('click', function() {
				$('form').attr('action', 'reply');
				$('form').submit();
			});
			$('.reply_delete').on('click', function(){
				$('.reply_frm').attr('action', 'reply_delete');
				$('.reply_frm').submit();
			});
			
			var reply_num_val = '<c:forEach items="${rList }" var="rep_dto"><c:out value=",${rep_dto.reply_num}"></c:out></c:forEach>';
			var reply_num_arr = reply_num_val.toString().split(",");
			reply_num_arr = reply_num_arr.filter(function(elem){
			    return elem != ""; 
			});
			$.each(reply_num_arr, function(i, elt) {
				alert(i+":"+elt);
			});
			
			$('.reply_update').on('click', function(){
			    $('.reply_write_content').val('');
			});
	    });
	</script>
	<c:choose>
		<c:when test="${isMember eq false || memberInfo.user_id == null}">
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

	
<!--------------------------------------------------------------------------------------------  -->
    <c:if test="${memberInfo.user_id != null}"><!-- 댓글 부분 -->
	<div id="comment">
		<table border="1" bordercolor="lightgray">
		<!-- 댓글 목록 -->   
		<c:if test="${requestScope.rList != null}">
			<c:forEach var="rList" items="${requestScope.rList}">
			<tr>
				<!-- 아이디, 작성날짜 -->
				<td width="150">
					<div>
						${rList.user_id}<br>
						<font size="2" color="lightgray">${rList.reply_date}</font>
					</div>
				</td>
				<!-- 본문내용 -->
				<td width="550">
					<div class="text_wrapper reply_content">
						${rList.reply_content}
					</div>
				</td>
				<!-- 버튼 -->
				<td width="100">
					<form class="reply_frm">
						<input type="hidden" name="reply_num" value="${rList.reply_num}">
						<input type="hidden" name="num" value="${dto.board_num}">
						<div id="btn" style="text-align:center;">
							<a href="#">[답변]</a><br>
							<!-- 댓글 작성자만 수정, 삭제 가능하도록 -->   
							<c:if test="${rList.user_id == memberInfo.user_id}">
							<input type="button" class="reply_update" value="[수정]" />   
							<input type="button" class="reply_delete" value="[삭제]" />
							</c:if>
						</div>
					</form>
				</td>
			</tr>
			</c:forEach>
		</c:if>
		
		
		<!-- 로그인 했을 경우만 댓글 작성가능 -->
		<c:if test="${memberInfo.user_id != null}">
		<tr bgcolor="#F5F5F5">
			<form id="writeCommentForm">
				<input type="hidden" name="num" value="${dto.board_num}">
				<input type="hidden" name="comment_id" value="${memberInfo.user_id}">
				<!-- 아이디-->
				<td width="150">
					<div>
						${memberInfo.user_id}
					</div>
				</td>
				<!-- 본문 작성-->
				<td width="550">
				   <div>
				      <textarea name="comment_content" rows="4" cols="70" class="reply_write_content"></textarea>
				   </div>
				</td>
				<!-- 댓글 등록 버튼 -->
				<td width="100">
					<div id="btn" style="text-align:center;">
						<p><input type="button" class="reply" value="[댓글등록]"></p>   
					</div>
				</td>
			</form>
		</tr>
		</c:if>
	
	   </table>
	</div>
	</c:if>
</div>
	<!--footer-->
	<jsp:include page="../semiproject/footer.jsp"></jsp:include>
</body>
</html>