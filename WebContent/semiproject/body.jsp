<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="../semiproject/css/orman.css"
   type="text/css" media="screen" />
<link rel="stylesheet" href="../semiproject/css/nivo-slider.css"
   type="text/css" media="screen" />
<script type="text/javascript"
   src="../semiproject/js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
    $(window).on('load', function() {
   $('#slider').nivoSlider({
       controlNav : true
   });
    });
</script>

<div id="templatemo_slider">
   <div class="slider-wrapper theme-orman">
      <div id="slider" class="nivoSlider">
         <img src="../semiproject/images/slider/seoul.png"
            alt="Homepage Slider" title="서울시 여의도" /> <img
            src="../semiproject/images/slider/seongnam.jpg" alt="Web Design"
            title="성남시 중앙공원" /> <a href="#"><img
            src="../semiproject/images/slider/suwon.jpg" alt="New Template"
            title="수원시 광교호수공원" /></a> <a href="#"><img
            src="../semiproject/images/slider/Gapyeong.jpg"
            alt="Business Website" title="가평군 남이섬" /></a>
      </div>
      <div class="nivo-controlNav-bg"></div>
   </div>
</div>
<!-- END of templatemo_slider -->
<h2>서울사람들</h2>
<div class="img_frame img_frame_12 img_nom img_fl">
   <span></span> <img src="../semiproject/images/seoul22.png"
      alt="Model Girl 1" />
</div>
<div class="half right">
   <ul class="list_bullet">
    <c:forEach items="${aList }" var="dto">
      <c:if test="${dto.board_loc_code eq '서울특별시' }" >
	    	<li class="flow">
	          <c:url var="d" value="view">
	             <c:param name="num" value="${dto.board_num }"></c:param>
	          </c:url>
	          <span>${dto.board_num }</span>
	          <a href="${d}"target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a>
	          <span>${dto.user_id}</span>
	    	</li>
      </c:if>
   </c:forEach>
   </ul>
   <a href="../main/seoul" class="more">More</a>
</div>

<div class="clear h40"></div>

<h2>경기사람들</h2>
<div class="img_frame img_frame_12 img_nom right">
   <span></span> <img src="../semiproject/images/Gyeonggi.jpg"
      alt="Model Girl 2" />
</div>
<div class="half left">
   <p>
      <em> 연애 </em>
   </p>
   <ul class="list_bullet">
     <c:forEach items="${aList }" var="dto">
      <c:if test="${dto.board_loc_code eq '경기도' }" >
	    	<li class="flow">
	          <c:url var="d" value="view">
	             <c:param name="num" value="${dto.board_num }"></c:param>
	          </c:url>
	          <span>${dto.board_num }</span>
	          <a href="${d}"target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a>
	          <span>${dto.user_id}</span>
	    	</li>
      </c:if>
   </c:forEach>
   </ul>
   <a href="../main/gyeonggi" class="more">More</a>
</div>

<div class="clear"></div>
