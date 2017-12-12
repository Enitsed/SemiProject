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
				<span></span> <img src="../semiproject/images/templatemo_image_02.jpg"
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
				<span></span> <img src="../semiproject/images/templatemo_image_01.jpg"
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
	<jsp:include page="../semiproject/footer.jsp" />
	<!-- END of templatemo_footer_wrapper -->
</body>
</html>