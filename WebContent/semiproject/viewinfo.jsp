<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>소통 : 마이페이지</title>
<style type="text/css">
#cancelBtn {
	float: right;
}
</style>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
		var arr = [ [ "강남구","노원구", "강동구" , "강서구"  ,"관악구"   ,"광진구"  ,"구로구"  ,"금천구"  ,"도봉구"  ,"동대문구" ,"동작구"  ,"마포구"  ,"서대문구" ,"서초구"  ,"성동구"  ,"성북구" ,"송파구" ,"양천구","영등포구" ,"용산구"  ,"은평구"  ,"종로구"  ,"중구" ,"중랑구"  ], [ "수원시","성남시","의정부","안양시","부천시","광명시","평택시","동두천시","안산시","고양시","과천시","구리시","남양주시","오산시","시흥시","군포시","의왕시","허남시","용인시","파주시","이천시","안성시","김포시","화성시","광주시","양주시","포천시","여주시","연천군","가평군","양평군" ] ];

      $(document).ready(function(){
    	  var area0 = ["시/도 선택","서울특별시","경기도"];
    	     var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
    	    
    	      var area2 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
    	     

    	  	$('#mydeleteBtn').on('click', function(){
    	  		$('.frm').attr('action', '/semiproject/main/delete');
    	  		$('.frm').submit();
    	  	});
    	  	
    	      $("select[name=city]").each(function() {
    	          $selcity = $(this);
    	          $.each(eval(area0), function() {
    	           $selcity.append("<option value='"+this+"'>"+this+"</option>");
    	          });
    	          $selcity.next().append("<option value=''>구/군 선택</option>");
    	         });
    	      $("select[name=city]").change(function() {
    	          var area = "area"+$("option",$(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
    	          var $district = $(this).next(); // 선택영역 군구 객체
    	          $("option",$district).remove(); // 구군 초기화

    	          if(area == "area0")
    	           $district.append("<option value=''>구/군 선택</option>");
    	          else {
    	           $.each(eval(area), function() {
    	            $district.append("<option value='"+this+"'>"+this+"</option>");
    	           });
    	          }
    	         });


    	       
    	      function showSub(obj) {
    	        var frm = document.memberInfo;

    	        if(obj =="서울") {
    	           $('#inputstate2').attr('class', 'form-control')
    	           
    	           frm.getElementById("inputState2").style.display=="";
    	           frm.getElementById("inputState2").disabled = false;
    	           frm.getElementById("inputState3").style.display="none";
    	           frm.getElementById("inputState3").disabled =true;
    	        } else if(obj=="경기도"){
    	           $('#inputstate1').attr('class', 'form-control2')
    	           frm.getElementById("inputState2").style.display=="none";
    	           frm.getElementById("inputState2").disabled = true;
    	           frm.getElementById("inputState3").style.display="";
    	           frm.getElementById("inputState3").disabled =false;
    	        }
    	        
    	     }
    	      
    	    
    	           $('#city').change(
    	                 function() {
    	                     var row = $('#city option:selected').index();
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
         
         $('#updateBtn').on('click', function() {
        	 if(!confirm("정말 수정 하시겠습니까?")){
        		 location.href = "/semiproject/main/mypage";
        	 }else{
        		 $('.frm').attr('action', '/semiproject/main/mypage_update');
                 $('.frm').submit();
                 alert("정보가 수정되었습니다.");
                 System.out.println(index);
        	 }
           
            });
         
         $('#cancelBtn').on('click', function() {
        	 alert("메인 홈페이지로 돌아갑니다.");
        	location.href = "/semiproject/main/*";
            });
});
</script>
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp"></jsp:include>
		<div id="templatemo_main">
			<div class="container" style="width: 80%;" >
				<form class="frm" method="post"
					enctype="application/x-www-form-urlencoded">
					<table class="table table-bordered">
						<caption>
							<h3>마이페이지</h3>
						</caption>
						<tbody>
							<tr>
								<th>아이디:</th>
								<td width="80%"><input type="text" name="user_id"
									value="${memberInfo.user_id }" disabled="disabled" /></td>
							</tr>
							<tr>
								<th>이름:</th>
								<td width="80%"><input type="text" name="user_name"
									value="${memberInfo.user_name }" disabled="disabled" /></td>
							<tr>
								<th>비밀번호 변경:</th>
								<td width="80%"><input type="password" class="form-control"
									id="user_pw" value="${memberInfo.user_pw }" placeholder="비밀번호"
									name="user_pw" /></td>
							</tr>
							<tr>
								<th>지역:</th>
								<td width="80%"><input type="text" name="user_address"
									value="${memberInfo.user_address }" disabled="disabled" /></td>
							<tr>
							<tr>
								<th>지역:</th>
								<td><select id="inputState" class="form-control"
									name="city"
									onChange=javascript:showSub(document.memberInfo.city.options.selectedIndex);>

								</select> <select id="inputState2" class="form-control" name="district">

								</select> <select id="inputState3" class="form-control3" name="district"
									style="display: none">


								</select>
							</tr>
							<tr>
								<th>생년월일:</th>
								<td width="80%"><input type="text" name="user_birth"
									value="${memberInfo.user_birthday }" disabled="disabled" /></td>
							</tr>
							<tr>
								<th>연락처:</th>
								<td width="80%"><input type="text" name="user_contact"
									id="user_contact" value="${memberInfo.user_contact }" /></td>
							</tr>
							<tr>
								<th>이메일:</th>
								<td width="80%"><input type="text" name="user_email"
									id="user_email" value="${memberInfo.user_email }" /></td>
							</tr>

							<tr>
								<td colspan="2">
									<button type="button" class="btn btn-success" id="updateBtn">정보
										수정</button>
									<button type="button" class="btn btn-mydelete" id="mydeleteBtn">회원탈퇴</button>
									<button type="submit" class="btn btn-danger" id="cancelBtn">취소</button>
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