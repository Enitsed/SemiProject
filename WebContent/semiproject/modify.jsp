<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글 수정</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
    var arr = [ [ "강남구", "강서구", "금천구" ], [ "안양", "의정부", "시흥" ] ];
	var selectedCity = "<c:out value="${dto.board_loc_city_code}"></c:out>"
	var selectedLocation = "<c:out value="${dto.board_loc_code}"></c:out>"
	var selectedCategory = "<c:out value="${dto.board_category}"></c:out>"

$(document).ready(function() {
	$('#city_menu option[value='+selectedCity+']').attr("selected", true);
	
	$('#city_menu').on('change', function() {
	    var row = $('#city_menu option:selected').index();
	    $.each($('#sub option'), function(index, value) {
		if (index != 0) {
		    $(this).remove();
		}
	    });
	    $.each(arr[row - 1], function(index, value) {
		$('#sub').append(
			'<option value="'+index+'">' + value + '</option>');
	    });
	});
	
	$('#city_menu').trigger('change');
	$('#sub option[value='+selectedLocation+']').attr("selected", true);
	$('#category_menu option[value='+selectedCategory+']').attr("selected", true);

	$('#list').on('click', function() {
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
			<div class="container">
				<form name="frm" action="/semiproject/main/modify?num=${num }" method="post" encType="multipart/form-data">
					<table class="table table-bordered">
						<caption>글쓰기</caption>
						<tbody>
							<tr>
								<th>지역:</th>
								<td>
								<select id="city_menu" name="city_menu" class="form-control">
									<option value="0">도시를선택하세요</option>
									<option value="1">서울</option>
									<option value="2">경기</option>
								</select>
								<select id="sub" class="form-control" name="loc_menu">
									<option value="">지역을선택하세요</option>
								</select></td>
							</tr>
							<tr>
								<th>분류:</th>
								<td>
									<select id="category_menu" name="category_menu" class="form-control">
											<option value="">분류를선택하세요</option>
											<option value="연애">연애</option>
											<option value="스터디">스터디</option>
											<option value="맛집">맛집</option>
											<option value="질문게시판">질문게시판</option>
									</select>
								</td>
							<tr>
								<th>제목:</th>
								<td>
									<input type="text" class="form-control" placeholder="제목을 입력하세요." name="subject" value="${dto.board_subject }" />
								</td>
							</tr>
							<tr>
								<th>글쓴이:</th>
								<td width="80%">
									<input type="text" name="writer" value="${dto.user_id }" disabled="disabled" />
								</td>
							</tr>
							<tr>
								<th>내용:</th>
								<td>
									<textarea class="form-control" rows="10" name="content">
										<c:out value="${dto.board_content }"></c:out>
									</textarea>
								</td>
							</tr>
							<tr>
								<th>첨부파일:</th>
								<td>
									<input type="file" class="form-control" name="upload" value="${dto.board_upload }" />
									<input type="hidden" name="num" value="${dto.board_num}" />
								</td>
							</tr>
							
							<tr>
								<td colspan="2">
									<input type="submit" class="btn btn-default" value="수정" id="edit" />
									<input type="button" class="btn btn-default" value="목록" id="list" />
									<input type="reset" class="btn btn-default" value="글 내용 초기화" />
								</td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>

			<div class="clear"></div>

		</div>
	</div>
	<jsp:include page="../semiproject/footer.jsp"></jsp:include>
</body>
</html>