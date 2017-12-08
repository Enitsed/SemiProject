<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>서울</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!-- embedding SWF -->
<script type="text/javascript" src="swfobject.js"></script>
<script type="text/javascript">
    var flashvars = {};
    flashvars.xml_file = "flashmo_271_photo_list.xml";
    var params = {};
    params.wmode = "transparent";
    params.allowfullscreen = true;
    var attributes = {};
    attributes.id = "slider";
    swfobject.embedSWF("flashmo_271_stylish_slider.swf", "flashmo_slider",
	    "960", "370", "9.0.0", false, flashvars, params, attributes);
</script>
<!-- embedding SWF -->
</head>
<body>
	<div id="templatemo_wrapper">
		<jsp:include page="../semiproject/header.jsp" />
		<!-- end of templatemo_menu -->
		<div id="templatemo_main">

			<!-- Stylish Slider SWF -->
			<div id="flashmo_slider">
				<a href="http://www.adobe.com/go/getflashplayer"> <img
					src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
					alt="Get Adobe Flash player" />
				</a>
			</div>
			<!-- Stylish Slider SWF -->

		</div>
		<!-- END of templatemo_slider -->

		<div id="templatemo_main">

			<h2>Homepage with Stylish Slider</h2>
			<div class="img_frame img_frame_12 img_nom img_fl">
				<span></span> <img src="images/templatemo_image_02.jpg"
					alt="Model Girl 2" />
			</div>
			<div class="half right">
				<p>
					<em>Credit goes to <a href="http://www.flashmo.com"
						target="_blank">flashmo</a> for Stylish Flash Slider. Check <a
						href="how_to_edit_stylish_slider.html">how to edit it</a>.
						Validate <a href="http://validator.w3.org/check?uri=referer"
						rel="nofollow">XHTML</a> &amp; <a
						href="http://jigsaw.w3.org/css-validator/check/referer"
						rel="nofollow">CSS</a>. Donec ultricies suscipit libero, sed
						dapibus purus pretium adipiscing. Nulla facilisi. Nunc venenatis
						nunc sed tellus dictum quis consectetur augue tristique.
					</em>
				</p>
				<ul class="list_bullet">
					<li class="flow">Etiam sodales, diam ac mollis pharetra</li>
					<li class="flow">Ut porttitor tempus nibh dolor rutrum eget</li>
					<li class="flow">Mauris justo neque at imperdiet quis, varius
						vel</li>
					<li class="flow">Aliquam tincidunt sagittis bibendum</li>
					<li class="flow">Curabitur a mi sem. Ut a ante neque, ut
						ornare libero</li>
				</ul>
				<a href="#" class="more">More</a>
			</div>

			<div class="clear h40"></div>

			<h2>Etiam Diam ac Mollis Pharetra</h2>
			<div class="img_frame img_frame_12 img_nom right">
				<span></span> <img src="images/templatemo_image_01.jpg"
					alt="Model Girl 1" />
			</div>
			<div class="half left">
				<p>
					<em>Proin erat nisl, vulputate nec sollicitudin et, gravida at
						turpis. Sed quis fermentum arcu, et ultrices sem. Nulla mattis
						felis ligula. Duis ornare ac augue quis faucibus. Nunc semper eros
						non laoreet suscipit. Donec id mi in enim pulvinar faucibus eget a
						velit.</em>
				</p>
				<ul class="list_bullet">
					<li class="flow">Suspendisse ultricies non augue mollis
						imperdiet</li>
					<li class="flow">Nunc bibendum cursus justo in volutpat</li>
					<li class="flow">Class aptent taciti sociosqu ad litora
						torquent</li>
					<li class="flow">Vivamus accumsan, magna sit amet</li>
					<li class="flow">Donec id mi in enim pulvinar faucibus eget a
						velit</li>
				</ul>
				<a href="#" class="more">More</a>
			</div>

			<div class="clear"></div>

		</div>
		<!-- END of templatemo_main -->
	</div>
	<!-- END of templatemo_wrapper -->
	<div id="templatemo_bottom_wrapper">
		<div id="templatemo_bottom">
			<div class="col one_fourth">
				<h4>About</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
					Phasellus porttitor lacus vel risus ullamcorper tempor.
					Pellentesque vestibulum vulputate odio sit amet adipiscing.</p>
			</div>
			<div class="col one_fourth">
				<h4>Photo Gallery</h4>
				<ul class="footer_gallery">
					<li><a href="images/Gallery01_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery01.jpg" alt="image 6" /></a></li>
					<li><a href="images/Gallery02_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery02.jpg" alt="image 7" /></a></li>
					<li><a href="images/Gallery03_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery03.jpg" alt="image 8" /></a></li>
					<li><a href="images/Gallery04_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery04.jpg" alt="image 9" /></a></li>
					<li><a href="images/Gallery05_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery05.jpg" alt="image 10" /></a></li>
					<li><a href="images/Gallery06_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery06.jpg" alt="image 11" /></a></li>
					<li><a href="images/Gallery07_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery07.jpg" alt="image 12" /></a></li>
					<li><a href="images/Gallery08_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery08.jpg" alt="image 13" /></a></li>
					<li><a href="images/Gallery09_1.jpg" rel="lightbox[portfolio]"><img
							src="images/Gallery09.jpg" alt="image 14" /></a></li>
				</ul>
				<div class="clear"></div>
				<a href="gallery.jsp" class="more">more</a>
			</div>
			<div class="col one_fourth">
				<h4>Recent Posts</h4>
				<ul class="no_bullet">
					<li><span class="header"><a href="#">Etiam suscipit
								bibendum scelerisque</a></span> Aliquam erat volutpat vivamus accumsan
						magna sit amet.</li>
					<li><span class="header"><a href="#">Aliquam at
								felis odio</a></span> Rhoncus purus, in pretium libero ut libero molestie
						nec lacinia mi fringilla.</li>
					<li><span class="header"><a href="#">Sed vel justo
								ut sodales nulla</a></span> Duis posuere ipsum quis arcu gravida tincidunt
						eget ante gravid eu odio.</li>
				</ul>
			</div>
			<div class="col one_fourth no_margin_right">
				<h4>Twitter</h4>
				<ul class="no_bullet">
					<li><a href="#">@templatemo</a> at scelerisque urna in tellus
						varius ultricies.</li>
					<li>Suspendisse enean <a href="#">#FREE</a> tincidunt massa in
						tellus varius ultricies.
					</li>
					<li>Aenean tincidunt massa in tellus varius ultricies. <a
						href="#">http://bit.ly/13IwZO</a></li>
				</ul>
			</div>

			<div class="clear"></div>
		</div>
		<!-- END of templatemo_bottom -->
	</div>
	<!-- END of templatemo_bottom_wrapper -->
	<div id="templatemo_footer_wrapper">
		<div id="templatemo_footer">
			<p>
				Copyright © 2072 <a href="#">Company Name</a>
				<!-- Credit: www.templatemo.com -->
			</p>
		</div>
		<!-- END of templatemo_footer -->
	</div>
	<!-- END of templatemo_footer_wrapper -->
</body>
</html>