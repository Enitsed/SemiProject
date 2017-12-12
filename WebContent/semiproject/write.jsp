<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>글 쓰기</title>

<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
    var arr = [ [ "강남구", "강서구", "금천구" ], [ "안양", "의정부", "시흥" ] ];

    $(document).ready(
	    function() {
		$('#city_menu').change(
			function() {
			    var row = $('#city_menu option:selected').index();
			    $.each($('#sub option'), function(index, value) {
				if (index != 0) {
				    $(this).remove();
				}
			    });

			    $.each(arr[row - 1], function(index, value) {
				$('#sub').append(
					'<option value="'+index+'">' + value
						+ '</option>');
			    });
			});

		$('#write').on('click', function() {
		    $('form').submit();
		});

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
				<form name="frm" action="/semiproject/main/write" method="post"
					encType="multipart/form-data">
					<table class="table table-bordered">
						<caption>글쓰기</caption>
						<tbody>
							<tr>
								<th>지역:</th>
								<td><select id="city_menu" name="city_menu"
									class="form-control">
										<option value="">도시를선택하세요</option>
										<option value="01">서울</option>
										<option value="02">경기</option>
								</select> <select id="sub" class="form-control" name="loc_menu">
										<option value="">지역을선택하세요</option>
								</select></td>
							</tr>
							<tr>
								<th>분류:</th>
								<td><select id="category_menu" name="category_menu"
									class="form-control">
										<option value="연애">연애</option>
										<option value="스터디">스터디</option>
										<option value="맛집">맛집</option>
										<option value="질문게시판">질문게시판</option>
								</select></td>
							<tr>
								<th>제목:</th>
								<td><input type="text" class="form-control"
									placeholder="제목을 입력하세요." name="subject" /></td>
							</tr>
							<tr>
								<th>글쓴이:</th>
								<td width="80%"><input type="text" name="writer"
									value="${memberInfo.user_id }" disabled="disabled" /></td>
							</tr>
							<tr>
								<th>내용:</th>
								<td><textarea class="form-control" rows="10"
										placeholder="내용을 입력하세요. " name="content"></textarea></td>
							</tr>
							<tr>
								<th>첨부파일:</th>
								<td><input type="file" class="form-control" name="upload" accept=".jpg,.jpeg,.png,.gif,.bmp"/></td>
							</tr>

							<tr>
								<td colspan="2">
									<input type="button" class="btn btn-default" value="등록" id="write" />
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