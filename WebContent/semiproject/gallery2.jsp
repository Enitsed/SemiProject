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
						<span></span> <a href="images/portfolio/09-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="images/portfolio/09.jpg" alt="Gallery Item 1" /></a>
					</div>
					<h4>용인 에버랜드</h4>
					<p>경기 용인시 처인구 포곡읍 에버랜드로 199</p>
					<a href="http://www.everland.com/web/everland/main.html"
						class="more">DETAIL</a>
				</div>

				<div class="col one_fourth gallery_box">
					<div class="img_frame img_frame_14 img_nom">
						<span></span> <a href="images/portfolio/10-l.jpg"
							rel="lightbox[new_gallery]"><img
							src="images/portfolio/10.jpg" alt="Gallery Item 1" /></a>
					</div>
					<h4>중구 덕수궁</h4>
					<p>서울 중구 세종대로 99 (우 04519)</p>
					<a href="http://www.deoksugung.go.kr/" class="more">DETAIL</a>
				</div>
			</div>
			<div class="clear"></div>
			<div class="pagging">
				<ul>
					<li><a href="gallery.jsp">Previous</a></li>
					<li><a href="gallery.jsp">1</a></li>
					<li><a href="gallery2.jsp">2</a></li>
					<li><a href="gallery2.jsp">Next</a></li>
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