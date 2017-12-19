<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<hr>
<!-- END of templatemo_slider -->
<h2>서울사람들</h2>
<div class="img_frame img_frame_12 img_nom img_fl">
   <span></span> <img src="../semiproject/images/seoul22.png" />
</div>
<div class="half right">
   <ul class="list_bullet">
      <table width=100% border=0 cellpadding=0 cellspacing=0>
         <tr height=26>
            <td colspan=6 class=pd12>
               <table width=100% border=0 cellpadding=0 cellspacing=0>
                  <tr>
                     <td><img src="../semiproject/images/logo2.png" width='15'
                        height='15' align='absmiddle'><a href="../main/seoul" class="right">More</a></td>
                  </tr>
                         
               </table>
            </td>
         </tr>
      </table>
      <table width=100% border=0 cellpadding=0 cellspacing=0>
         <tr class=listUnderline1>
            <td colspan=7></td>
         </tr>
         <col width=4></col>
         <tr>
            <td class=tblStyle1width=4></td>
            <td class=tblStyle00 align=center><b>지역</b></td>
            <td class=tblStyle00 align=center width=500><b>제목</b></td>

            <td class=tblStyle00 nowrap align=center><b>작성자</b></td>
            <td class=tblStyle00 nowrap align=center><b>작성일</b></td>
            <td class=tblStyle00 nowrap align=center><b>조회수</b></td>

         </tr>

         <c:forEach items="${aList }" var="dto">
            <c:if test="${dto.board_loc_code eq '서울특별시' }">

               <c:url var="d" value="view">

                  <c:param name="num" value="${dto.board_num }"></c:param>
               </c:url>
               <tr>
                  <td class=pd12>
               <tr height=20>
                  <td width=4></td>
                  <td nowrap align=center>${dto.board_loc_city_code}</td>
                  <td style='padding-left: 10; text-align:center;'><a href="${d}" target="_blank">[${dto.board_category}]${dto.board_subject }</a></td>
                  <td nowrap align=center>${dto.user_id}</td>
                  <td nowrap align=center>${dto.board_date}</td>
                  <td nowrap align=center>${dto.board_readcount}</td>

               </tr>

               </td>
               </tr>
            </c:if>
         </c:forEach>
      </table>

   </ul>
   
</div>

<div class="clear h40"></div>

<h2>경기사람들</h2>
<div class="img_frame img_frame_12 img_nom right">
   <span></span> <img src="../semiproject/images/Gyeonggi.jpg"
      alt="Model Girl 2" />
</div>
<div class="half left">
   <ul class="list_bullet">
      <table width=100% border=0 cellpadding=0 cellspacing=0>
         <tr height=26>
            <td colspan=6 class=pd12>
               <table width=100% border=0 cellpadding=0 cellspacing=0>
                  <tr>
                     <td><img src="../semiproject/images/logo2.png" width='15'
                        height='15' align='absmiddle'><a href="../main/gyeonggi" class="right">More</a></td>                                          
                  </tr>
               </table>
            </td>

         </tr>
      </table>
      <table width=100% border=0 cellpadding=0 cellspacing=0>
         <tr class=listUnderline1>
            <td colspan=7></td>
         </tr>
         <col width=4></col>

         <tr>
            <td class=tblStyle1width=4></td>
            <td class=tblStyle00 align=center><b>지역</b></td>
            <td class=tblStyle00 align=center width=500><b>제목</b></td>
            <td class=tblStyle00 nowrap align=center><b>작성자</b></td>
            <td class=tblStyle00 nowrap align=center><b>작성일</b></td>
            <td class=tblStyle00 nowrap align=center><b>조회수</b></td>
         </tr>
         <c:forEach items="${aList }" var="dto">
            <c:if test="${dto.board_loc_code eq '경기도' }">
               <c:url var="d" value="view">

                  <c:param name="num" value="${dto.board_num }"></c:param>
               </c:url>
               <tr>
                  <td class=pd12>
               <tr height=20>
                  <td width=4></td>
                  <td nowrap align=center>${dto.board_loc_city_code}</td>
                  <td style='padding-left: 10; text-align:center;'><a href="${d}" target="_blank">[${dto.board_category}]${dto.board_subject }</a></td>
                  <td nowrap align=center>${dto.user_id}</td>
                  <td nowrap align=center>${dto.board_date}</td>
                  <td nowrap align=center>${dto.board_readcount}</td>
               </tr>

            </c:if>
         </c:forEach>
      </table>
   </ul>

</div>

<div class="clear"></div>