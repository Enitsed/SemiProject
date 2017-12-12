<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../semiproject/templatemo_style.css" rel="stylesheet"
   type="text/css" />

<script type="text/javascript">
    function clearText(field) {
   if (field.defaultValue == field.value)
       field.value = '';
   else if (field.value == '')
       field.value = field.defaultValue;
    }
</script>

<link rel="stylesheet" href="../semiproject/css/slimbox2.css"
   type="text/css" media="screen" />
<!--  t e m p l a t e m o  372  t i t a n i u m  -->
<style type="text/css">
select {
   margin: 5px;
}
.radio-inline {
   margin: 20px !important;
}
.btn {
   width: 30%;
}
#cancelBtn {
   float: right;
}
#fis{
position: relative;
}
#idal, #pwal, #nameal, #birthal, #contactal, #emailal{
width: 200px;
height: 15px;
position: absolute;
}
#idal{
left: 255px;
top: 45px;
}
#pwal{
left: 266px;
top: 100px;
}
#nameal{
left: 250px;
top: 153px;
}
#birthal{
left: 266px;
top: 366px;
}
#contactal{
left: 255px;
top: 420px;
}
#emailal{
left: 255px;
top:475px;
}
</style>
</head>
<body>
   <div id="templatemo_wrapper">
      <jsp:include page="../semiproject/header.jsp"></jsp:include>

<script type="text/javascript">
$(document).ready(function() {
    $('#cancelBtn').on('click', function() {
          alert("회원가입을 취소하셨습니다.");
          $('form').attr('action', '/semiproject/main/board');
        //  location.href = '/semiproject/main/board';
      });
      
      function ChkPwd(){
         var pwd=$('#pw').val();
         if(pwd.length<4 || pwd.length>16){
            alert("암호는 4자이상 16자 이하여야 합니다.");
            $('#pwd').attr('class', 'form-group has-error col-md-6')
               $('#pwal').fadeIn().fadeOut(2000);
               $('#pw').focus();
            return false;
         }
         //최소 8 자, 최소 하나의 문자, 하나의 숫자 및 하나의 특수 문자 이상 
         var check=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
         if(!check.test(pwd)){
            alert('영문,숫자,특수문자의 조합으로 8자이상입력해주세요');
            $('#pwd').attr('class', 'form-group has-error col-md-6')
               $('#pwal').fadeIn().fadeOut(2000);
               $('#pw').focus();
            return false;
         }   
      }
      $('#joinBtn').click(function() {
         var idn = /[a-zA-Z0-9]*$/;  
         var pwn = /(?=.*[a-z])(?=.*[_!@#$%^&*]|.*[0-9]).{4,19}$/;//5~20 영문자대소문자
         var nan = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/ ; //한글 만
         var ptn = /[a-zA-Z0-9]{4,10}$/;       //영어와 숫자 4~10

         if ($('#id').val() == "") {
               $('#idd').attr('class', 'form-group has-error col-md-6')
               $('#idal').fadeIn().fadeOut(2000);
               $('#id').focus();
               return false;
            }else if ($('#id').val() != "") {
               $('#idd').attr('class', 'form-group has-success col-md-6')
               $('#id').focus();
            }

            if ($('#pw').val() == "") {
               $('#pwd').attr('class', 'form-group has-error col-md-6')
               $('#pwal').fadeIn().fadeOut(2000);
               $('#pw').focus();
               return false;
            }else if ($('#pw').val() != "") {
               $('#pwd').attr('class', 'form-group has-success col-md-6')
               $('#pw').focus();
            }

            if ($('#name').val() == "") {
               $('#named').attr('class', 'form-group has-error col-md-6')
               $('#nameal').fadeIn().fadeOut(2000);
               $('#name').focus();
               return false;
            }else if ($('#name').val() != "") {
               $('#named').attr('class', 'form-group has-success col-md-6')
               $('#name').focus();
            }
            
            if ($('#birth').val() == "") {
               $('#birthd').attr('class', 'form-group has-error col-md-6')
               $('#birthal').fadeIn().fadeOut(2000);
               $('#birth').focus();
               return false;
            } else if ($('#birth').val() != "") {
               $('#birthd').attr('class', 'form-group has-success col-md-6')
               $('#id').focus();
            }
            
            if ($('#contact').val() == "" ) {
               $('#contactd').attr('class', 'form-group has-error col-md-6')
               $('#contactal').fadeIn().fadeOut(2000);
               $('#contact').focus();
               return false;
            } else if ($('#contact').val() != "") {
               $('#contactd').attr('class', 'form-group has-success col-md-6')
               $('#contact').focus();
            }
            
            if ($('#email').val() == "") {
               $('#emaild').attr('class', 'form-group has-error col-md-6')
               $('#emailal').fadeIn().fadeOut(2000);
               $('#email').focus();
               return false;
            }else if ($('#email').match(/^(\w+)@(\w+)[.](\w+)$/ig) == null) {
               alert('이메일 형식(아이디@도메인.com)으로 입력하세요');
               return false;
            }else{
               $('form').attr('action', '/semiproject/main/board');
                $('form').submit();
               }
       });      
      });
</script>

      <div id="templatemo_main">
         <form name="memberInfo" method="post" action="/semiproject/main/signup">
            <fieldset id="fis">
   <legend>회원가입 정보 입력</legend>
    <div class="form-row">
    <div class="form-group col-md-6" id="idd">
     <label for="id">아이디</label> 
     <input type="text" class="form-control" id="id" placeholder="ID" name="id" 
     pattern="[a-z|A-Z|0-9]{3,14}" title="특수문자는 입력하실수 없습니다."
     style="text-align:center;IME-MODE:disabled;" maxlength=15/>
    </div>
    <div class="alert alert-danger col-md-6" role="alert" id="idal" style="display: none">
    <a href="#" class="alert-link">아이디를 입력해주세요.</a></div>

    <div class="form-group col-md-6" id="pwd">
      <label for="pwd">비밀번호</label> 
      <input type="password" class="form-control" id="pw" placeholder="Password"
      name="pw" 
      style="text-align:center; IME-MODE:disabled;" maxlength=18 onblur = "javascript:ChkPwd();"/>
     </div>    
     <div class="alert alert-danger col-md-6" role="alert" style="display: none" id="pwal">
    <a href="#" class="alert-link">비밀번호를 입력해주세요.</a></div>         

       <div class="form-group col-md-6" id="named">
      <label for="name">이름</label> 
      <input type="text" class="form-control" id="name" placeholder="Name" 
      name="name" pattern="[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]{1,5}" title="입력된 값을 확인해주세요.(ex-홍길동)"
      style=" IME-MODE:active; text-align:center;" maxlength=8/>
     </div>
     <div class="alert alert-danger col-md-6" role="alert" style="display: none" id="nameal">
    <a href="#" class="alert-link">이름을 입력해주세요.</a></div>
                
    <div class="form-group col-md-6" >
     <label for="gender">성별</label> 
     <br /> 
     <label class="radio-inline"> 
     <input type="radio" name="gender" id="gender" value="male" checked />
        남자 </label> 
     <label class="radio-inline"> 
     <input type="radio" name="gender" id="gender" value="female" />
        여자 </label>
    </div>
                  
    <div class="form-group col-md-6">
     <label for="inputState">지역</label>
      <select id="inputState" class="form-control" name="city">
      <option value="서울" selected>서울</option>
      <option>...</option>

      </select> <select id="inputState" class="form-control" name="district">
      <option value="노원구" selected>노원구</option>
       <option value="강남구">강남구</option>
       <option value="강동구">강동구</option>
       <option value="강북구">강북구</option>
       <option value="강서구">강서구</option>
       <option value="관악구">관악구</option>
       <option value="광진구">광진구</option>
       <option value="구로구">구로구</option>
       <option value="금천구">금천구</option>
       <option value="도봉구">도봉구</option>
       <option value="동대문구">동대문구</option>
       <option value="동작구">동작구</option>
       <option value="마포구">마포구</option>
       <option value="서대문구">서대문구</option>
       <option value="서초구">서초구</option>
       <option value="성동구">성동구</option>
       <option value="성북구">성북구</option>
       <option value="송파구">송파구</option>
       <option value="양천구">양천구</option>
       <option value="영등포구">영등포구</option>
       <option value="용산구">용산구</option>
       <option value="은평구">은평구</option>
       <option value="종로구">종로구</option>
       <option value="중구">중구</option>
       <option value="중랑구">중랑구</option>
      <option>...</option>
      </select>
     </div>
          
     <div class="form-group col-md-6" id="birthd">
      <label for="birth">생년월일</label> 
      <input type="text" class="form-control" id="birth" placeholder="생년월일 (숫자만 입력)" 
      name="birth" pattern="[0-9]{8}" title="생년월일에 입력된 값을 확인해주세요.(ex-20171208)"
      style="text-align:center;IME-MODE:disabled;" onkeyPress="if ((event.keyCode<48) || (event.keyCode>57)) event.returnValue=false;" 
        maxlength=8/>
     </div>
     <div class="alert alert-danger col-md-6" role="alert" style="display: none" id="birthal">
    <a href="#" class="alert-link">생년월일을 입력해주세요.</a></div>
                  
     <div class="form-group col-md-6" id="contactd">
      <label for="contact">연락처</label> 
      <input type="text" class="form-control" id="contact" placeholder="연락처 (숫자만 입력)"
      name="contact" pattern="[0-9]{11}" title="연락처에 입력된 값을 확인해주세요.(ex-01012345678)"
      style="text-align:center;IME-MODE:disabled;" onkeyPress="if ((event.keyCode<48) || (event.keyCode>57)) event.returnValue=false;" 
        maxlength=11/>
     </div>
     <div class="alert alert-danger col-md-6" role="alert" style="display: none" id="contactal">
     <a href="#" class="alert-link">연락처를 입력해주세요.</a></div>
      
     <div class="form-group col-md-6" id="emaild">
      <label for="email">Email</label> 
      <input type="email" class="form-control" id="email" placeholder="Email" name="email" 
      title="이메일 형식(아이디@도메인.com)으로 입력하세요"style=IME-MODE:disabled; maxlength=20/>
     </div>
     <div class="alert alert-danger col-md-6" role="alert" style="display: none" id="emailal">
     <a href="#" class="alert-link">이메일을 입력해주세요.</a></div>
   </div>

  
   <div class="form-group col-md-12">
  

    <div class="form-check">
   
    </div>
    </div>
   
    </fieldset>  <!--  onclick="CheckForm" -->
     <button type="submit" class="btn btn-success" id="joinBtn">회원가입</button>
     <button type="button" class="btn btn-danger" id="cancelBtn">취소</button>

    </form>  
      </div>
      <div class="alert alert-danger col-md-6" role="alert" id="idal2" style="display: none">
    <a href="#" class="alert-link">양식에 맞게 입력해 주세요.</a></div>
   </div>
   <jsp:include page="/semiproject/footer.jsp"></jsp:include>

</body>
</html>