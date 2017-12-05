<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
    var arr = [ [ "강남구", "강서구", "금천구" ], [ "안양", "의정부", "시흥" ] ];

    $(document).ready(
	    function() {
		$('#loc_menu').change(
			function() {
			    var row = $('#loc_menu option:selected').index();
			    $.each($('#sub option'), function(index, value) {
				if (index != 0) {
				    $(this).remove();
				}
			    });

			    $.each(arr[row - 1], function(index, value) {
				$('#sub').append(
					'<option value="'+value+'">' + value
						+ '</option>');
			    });
			});
	    });
</script>
</head>
<body>
	<div class="container">
		<table class="table table-bordered">
			<thead>
			<caption>글쓰기</caption>
			</thead>
			<tbody>
				<form name="frm" action="write.do" method="post"
					encType="multiplart/form-data">
					<tr>
						<th>지역:</th>
						<td><select id="loc_menu" name="loc_menu"
							class="form-control">
								<option value="">도시를선택하세요</option>
								<option value="l1">서울</option>
								<option value="l2">경기</option>
						</select> <select id="sub" class="form-control">
								<option value="">지역을선택하세요</option>
						</select></td>
					</tr>
					<tr>
						<th>분류:</th>
						<td><select id="category_menu" name="category_menu"
							class="form-control">
								<option value="">분류를선택하세요</option>
								<option value="c1">연애</option>
								<option value="c2">스터디</option>
								<option value="c3">맛집</option>
								<option value="c4">질문게시판</option>
						</select></td>
					<tr>
						<th>제목:</th>
						<td><input type="text" class="form-control"
							placeholder="제목을 입력하세요. " name="subject" /></td>
					</tr>
					<tr>
						<th>글쓴이:</th>
						<td width="80%"><input type="text" name="writer" /></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea class="form-control" rows="10"
								placeholder="내용을 입력하세요. " name="content"></textarea></td>
					</tr>
					<tr>
						<th>첨부파일:</th>
						<td><input type="file" class="form-control" name="upload" /></td>
					</tr>

					<tr>
						<td colspan="2"><input type="submit" class="btn btn-default"
							value="등록" onclick="sendData()" /> <input type="button"
							class="btn btn-default" value="목록"
							onclick="javascript:location.href='list.do'" /> <input
							type="reset" class="btn btn-default" value="reset" /></td>
					</tr>
				</form>
			</tbody>
		</table>
	</div>
</body>
</html>