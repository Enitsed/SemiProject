<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>갤러리</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<!-- end of templatemo_menu -->
		<div id="templatemo_main">
			<h2>Gallery</h2>
			<div id="gallery">
				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/01-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/01.jpg" alt="Gallery Item 1" /></a>
					</div>
					<h4>양평 두물머리</h4>
					<p>경기도 양평군 양서면 두물머리길 125</p>
					<a
						href="https://store.naver.com/attractions/detail?id=13491272&entry=plt&query=%EB%91%90%EB%AC%BC%EB%A8%B8%EB%A6%AC"
						class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/02-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/02.jpg" alt="Gallery Item 2" /></a>
					</div>
					<h4>광교호수공원</h4>
					<p>경기도 수원시 영통구 광교호수로 57</p>
					<a href="http://www.gglakepark.or.kr/" class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/03-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/03.jpg" alt="Gallery Item 3" /></a>
					</div>
					<h4>수원 화성</h4>
					<p>경기도 수원시 팔달구 장안동 1-2번지</p>
					<a href="http://hsmuseum.suwon.go.kr/" class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box no_margin_right">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/04-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/04.jpg" alt="Gallery Item 4" /></a>
					</div>
					<h4>분당 중앙공원</h4>
					<p>경기도 성남시 분당구 성남대로 550</p>
					<a
						href="https://store.naver.com/attractions/detail?id=11622442&entry=plt&query=%EC%84%B1%EB%82%A8%EC%A4%91%EC%95%99%EA%B3%B5%EC%9B%90"
						class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/05-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/05.jpg" alt="Gallery Item 5" /></a>
					</div>
					<h4>서울 경복궁</h4>
					<p>서울 종로구 사직로 161</p>
					<a href="http://www.royalpalace.go.kr:8080/" class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/06-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/06.jpg" alt="Gallery Item 6" /></a>
					</div>
					<h4>가평 남이섬</h4>
					<p>남산면 길 1 남이섬</p>
					<a href="https://namisum.com/" class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/07-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/07.jpg" alt="Gallery Item 7" /></a>
					</div>
					<h4>가평 쁘디프랑스</h4>
					<p>경기 가평군 청평면 호반로 1063</p>
					<a href="http://www.pfcamp.com/" class="more">DETAIL</a>
				</div>
				<div class="col one_fourth gallery_box no_margin_right">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="../semiproject/images/portfolio/08-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="../semiproject/images/portfolio/08.jpg" alt="Gallery Item 8" /></a>
					</div>
					<h4>서울 남산타워</h4>
					<p>서울 용산구 남산공원길 105</p>
					<a href="http://www.seoultower.co.kr/" class="more">DETAIL</a>
				</div>
			</div>
			<div class="clear"></div>
			<div class="pagging">
				<ul>
					<li><a href="../semiproject/gallery.jsp">Previous</a></li>
					<li><a href="../semiproject/gallery.jsp">1</a></li>
					<li><a href="../semiproject/gallery2.jsp">2</a></li>
					<li><a href="../semiproject/gallery2.jsp">Next</a></li>
				</ul>
			</div>

			<div class="clear"></div>
		</div>
		<!-- END of templatemo_main -->
	</div>
	<!-- END of templatemo_wrapper -->
	<jsp:include page="../semiproject/footer.jsp" />
	<!-- END of templatemo_footer_wrapper -->
</body>
</html>