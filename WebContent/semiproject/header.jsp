<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="../semiproject/css/bootstrap.css" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<link href="../semiproject/css/board.css" rel="stylesheet"
	type="text/css" />

<link href="../semiproject/templatemo_style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" href="../semiproject/css/orman.css"
	type="text/css" media="screen" />

<script type="text/javascript" src="../semiproject/js/ddsmoothmenu.js">
    /***********************************************
     * Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
     * This notice MUST stay intact for legal use
     * Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
     ***********************************************/
</script>
<link rel="stylesheet" type="text/css"
	href="../semiproject/css/ddsmoothmenu.css" />
<script type="text/javascript">
    ddsmoothmenu.init({
	mainmenuid : "templatemo_menu", //menu DIV id
	orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname : 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
    })

    function clearText(field) {
	if (field.defaultValue == field.value)
	    field.value = '';
	else if (field.value == '')
	    field.value = field.defaultValue;
    }

    $(function() {
	// 로그아웃
	$('#logout').on('click', function() {
	    location.href = "/semiproject/main/logout";
	});
    });
</script>

<script type="text/javascript">
    jQuery.browser = {};
    (function() {
	jQuery.browser.msie = false;
	jQuery.browser.version = 0;
	if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
	    jQuery.browser.msie = true;
	    jQuery.browser.version = RegExp.$1;
	}
    })();
</script>

<script type="text/javascript"
	src="../semiproject/js/jquery.fancybox-1.3.4.js"></script>
<link rel="stylesheet"
	href="../semiproject/css/jquery.fancybox-1.3.4.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="../semiproject/css/slimbox2.css"
	type="text/css" media="screen" />
<script type="text/JavaScript" src="../semiproject/js/slimbox2.js"></script>
<script type="text/JavaScript" src="../semiproject/js/autoload.js"></script>

<script type="text/javascript">
$(window).on('load', function() {

	/* Apply fancybox to multiple items */

	$(".footer_gallery>li a").fancybox({
	    'transitionIn' : 'elastic',
	    'transitionOut' : 'elastic',
	    'speedIn' : 600,
	    'speedOut' : 200,
	    'overlayShow' : false,
	    'hideOnContentClick' : true
	});
	
	$(".ddsmoothmenu ul li a").on('mouseleave', function(e) {
		if (this.href.substring(15)==="seoul") {
			e.preventDefault();
		} else if (this.href.substring(15)==="gyeonggi") {
			
		}
	})
	
});
    
</script>

<!--  t e m p l a t e m o  372  t i t a n i u m  -->
<div id="templatemo_header">
	<div id="site_title">
		<a href="../semiproject/index.jsp">소통</a>
	</div>
	<div id="templatemo_search">
		<c:choose>
			<c:when test="${isMember==true && memberInfo ne null }">
				<span style="color :white">${memberInfo.user_name } 님 환영합니다.</span>
				<a href="../semiproject/viewinfo.jsp" style="color :red;">마이페이지</a>
				<img src="../semiproject/images/util_menu_logout.gif" id="logout" alt="로그아웃"/>
			</c:when>
			<c:otherwise>
				<div class="login_wrap">
					<a href="../main/login"> <img
						src="../semiproject/images/util_menu_1.gif" alt="로그인" />
					</a> &nbsp; <a href="../main/join" id="inputform"><img
						src="../semiproject/images/util_menu_2.gif" alt="회원가입" /></a>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</div>
<!-- END of templatemo_header -->
<div id="templatemo_menu" class="ddsmoothmenu">
	<ul>
		<li><a href="../main/index" <c:if test="${board_loc == 'index' }">class="selected"</c:if>>Home</a></li>
		<li><a href="../main/seoul" <c:if test="${board_loc == 'seoul' }">class="selected"</c:if>>서울</a>
			<ul>
				<li><a href="#">종로·중구·용산</a>
					<ul>
						<li><a href="#">종로</a></li>
						<li><a href="#">중구</a></li>
						<li><a href="#">용산</a></li>
					</ul></li>
				<li><a href="#">도봉·강북·성북·노원</a>
					<ul>
						<li><a href="#">도봉</a></li>
						<li><a href="#">강북</a></li>
						<li><a href="#">성북</a></li>
						<li><a href="#">노원</a></li>
					</ul></li>
				<li><a href="#">동대문·중랑·성동·광진</a>
					<ul>
						<li><a href="#">동대문</a></li>
						<li><a href="#">중랑</a></li>
						<li><a href="#">성동</a></li>
						<li><a href="#">광진</a></li>
					</ul></li>
				<li><a href="#">강동·송파</a>
					<ul>
						<li><a href="#">강동</a></li>
						<li><a href="#">송파</a></li>
					</ul></li>
				<li><a href="#">서초·강남</a>
					<ul>
						<li><a href="#">서초</a></li>
						<li><a href="#">강남</a></li>
					</ul></li>
				<li><a href="#">동작·관악·금천</a>
					<ul>
						<li><a href="#">동작</a></li>
						<li><a href="#">관악</a></li>
						<li><a href="#">금천</a></li>
					</ul></li>
				<li><a href="#">강서·양천·구로·영등포</a>
					<ul>
						<li><a href="#">강서</a></li>
						<li><a href="#">양천</a></li>
						<li><a href="#">구로</a></li>
						<li><a href="#">영등포</a></li>
					</ul></li>
				<li><a href="#">은평·마포·서대문</a>
					<ul>
						<li><a href="#">은평</a></li>
						<li><a href="#">마포</a></li>
						<li><a href="#">서대문</a></li>
					</ul></li>
			</ul></li>

		<li>
		<a href="../main/gyeonggi" <c:if test="${board_loc == 'gyeonggi' }">class='selected'</c:if>>경기</a>
			<ul>
				<li><a href="#">의정부·양주·포천</a>
					<ul>
						<li><a href="#">의정부</a></li>
						<li><a href="#">양주</a></li>
						<li><a href="#">포천</a></li>
					</ul></li>
				<li><a href="#">구리·남양주</a>
					<ul>
						<li><a href="#">구리</a></li>
						<li><a href="#">남양주</a></li>
					</ul></li>
				<li><a href="#">하남·광주</a>
					<ul>
						<li><a href="#">하남</a></li>
						<li><a href="#">광주</a></li>
					</ul></li>
				<li><a href="#">성남·용인</a>
					<ul>
						<li><a href="#">성남</a></li>
						<li><a href="#">용인</a></li>
					</ul></li>
				<li><a href="#">안양·수원·의왕·안산·군포</a>
					<ul>
						<li><a href="#">안양</a></li>
						<li><a href="#">수원</a></li>
						<li><a href="#">의왕</a></li>
						<li><a href="#">안산</a></li>
						<li><a href="#">군포</a></li>
					</ul></li>
				<li><a href="#">인천·부천·김포·시흥</a>
					<ul>
						<li><a href="#">인천</a></li>
						<li><a href="#">부천</a></li>
						<li><a href="#">김포</a></li>
						<li><a href="#">시흥</a></li>
					</ul></li>
				<li><a href="#">파주·고양</a>
					<ul>
						<li><a href="#">파주</a></li>
						<li><a href="#">고양</a></li>
					</ul></li>
			</ul></li>
		<li><a href="../main/gallery" <c:if test="${board_loc == 'gallery' }">class="selected"</c:if>>갤러리</a></li>
		<li><a href="../main/contact" <c:if test="${board_loc == 'contact' }">class="selected"</c:if>>문의 사항</a></li>
		<li><a href="../main/board" <c:if test="${board_loc == 'board' }">class="selected"</c:if>>게시판</a></li>

	</ul>
	<br style="clear: left" />
</div>
