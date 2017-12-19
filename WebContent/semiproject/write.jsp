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
	var area0 = [ "시/도 선택", "서울특별시", "경기도" ];
	var area1 = [ "강남구", "강동구", "강북구", "강서구",
					"관악구", "광진구", "구로구", "금천구", "노원구",
					"도봉구", "동대문구", "동작구", "마포구", "서대문구",
					"서초구", "성동구", "성북구", "송파구", "양천구",
					"영등포구", "용산구", "은평구", "종로구", "중구",
					"중랑구" ];

	var area2 = [ "고양시", "과천시", "광명시", "광주시",
					"구리시", "군포시", "김포시", "남양주시", "동두천시",
					"부천시", "성남시", "수원시", "시흥시", "안산시",
					"안성시", "안양시", "양주시", "오산시", "용인시",
					"의왕시", "의정부시", "이천시", "파주시", "평택시",
					"포천시", "하남시", "화성시", "가평군", "양평군",
					"여주군", "연천군" ];

    $(document).ready(
	    function() {
		
		$("select[name=city_menu]")
		.each(function() {$selcity = $(this);
		 $.each(eval(area0),function() {$selcity.append("<option value='"+this+"'>"+ this+ "</option>");});
					$selcity.next().append("<option value=''>구/군 선택</option>");
		});

    // 시/도 선택시 구/군 설정

	$("select[name=city_menu]").change(function() {var area = "area"+ $("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
			var $loc_menu = $(this).next(); // 선택영역 군구 객체
				$("option", $loc_menu).remove(); // 구군 초기화
				if (area == "area0")
				   $loc_menu.append("<option value=''>구/군 선택</option>");
			    else {
			    	$.each(eval(area),function() {
					   $loc_menu.append("<option value='"+this+"'>"+ this+ "</option>");
					});
				}
	});

		$('#write').on('click', function() {
		    $('form[name=frm]').submit();
		});

		$('#list').on('click', function() {
		    $('form[name=frm]').attr('action', '/semiproject/main/board');
		    $('form[name=frm]').submit();
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
								<td><select id="city_menu" name="city_menu" class="form-control">
										
								</select> 
								<select id="sub" class="form-control" name="loc_menu">
										
								</select></td>
							</tr>
							<tr>
								<th>분류:</th>
								<td><select id="category_menu" name="category_menu"
									class="form-control">
										  <option value="자유게시판">자유게시판</option>
                              			  <option value="스터디">스터디</option>
                              			  <option value="맛집">맛집</option>
                             			  <option value="스포츠">스포츠</option>
                                		  <option value="동호회">동호회</option>
                                	 	  <option value="동네소식">동네소식</option>
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