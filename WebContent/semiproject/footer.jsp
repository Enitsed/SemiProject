<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
$(document).ready(function(){
   /*관련 사이트 이동*/
   $('form[name=rel_f]').on('submit',function(){
      var url=$('select',this).val();      
      window.open(url);
      return false;
   });////////////////////////////////
});     
</script>
<div id="templatemo_bottom_wrapper">
   <div id="templatemo_bottom">
      <div class="col one_fourth">
         <h4>About Communication</h4>
         <p>
            서울과 경기도의 사람들이 모여 소통 할 수 있는 공간입니다.<br /> 구 단위로 구분되어 있으며,
            "자유게시판/스터디/맛집/스포츠/동호회/동네소식" 총 여섯 개의 게시판이 있습니다.<br /> <b>여러분들의
               정보를 공유해주세요!</b>
         </p>
      </div>
      <div class="col one_fourth">
         <h4>Photo Gallery</h4>
         <ul class="footer_gallery">
            <li><a href="../semiproject/images/Gallery01_1.jpg"
               rel="gallery"> <img src="../semiproject/images/Gallery01.jpg"
                  alt="image 6" /></a></li>
            <li><a href="../semiproject/images/Gallery02_1.jpg"
               rel="gallery"> <img src="../semiproject/images/Gallery02.jpg"
                  alt="image 7" /></a></li>
            <li><a href="../semiproject/images/Gallery03_1.jpg"
               rel="gallery"> <img src="../semiproject/images/Gallery03.jpg"
                  alt="image 7" /></a></li>
            <li><a href="../semiproject/images/Gallery04_1.jpg"
               rel="gallery"><img src="../semiproject/images/Gallery04.jpg"
                  alt="image 9" /></a></li>
            <li><a href="../semiproject/images/Gallery05_1.jpg"
               rel="gallery"><img src="../semiproject/images/Gallery05.jpg"
                  alt="image 10" /></a></li>
            <li><a href="../semiproject/images/Gallery06_1.jpg"
               rel="gallery"><img src="../semiproject/images/Gallery06.jpg"
                  alt="image 11" /></a></li>
            <li><a href="../semiproject/images/Gallery07_1.jpg"
               rel="gallery"><img src="../semiproject/images/Gallery07.jpg"
                  alt="image 12" /></a></li>
            <li><a href="../semiproject/images/Gallery08_1.jpg"
               rel="gallery"><img src="../semiproject/images/Gallery08.jpg"
                  alt="image 13" /></a></li>
            <li><a href="../semiproject/images/Gallery09_1.jpg"
               rel="gallery"><img src="../semiproject/images/Gallery09.jpg"
                  alt="image 14" /></a></li>

         </ul>
         <div class="clear"></div>
         <a href="../semiproject/gallery.jsp" class="more">more</a>
      </div>
      <div class="col one_fourth">
         <h4>최신 글</h4>
         <ul class="no_bullet">
            <c:choose>
               <c:when test="${empty fList }">
                  <span>등록된 글이 없습니다</span>
               </c:when>
               <c:otherwise>
                  <c:forEach items="${requestScope.fList }" var="fdto">
                     <c:url var="link" value="view">
                        <c:param name="num" value="${fdto.board_num}" />
                     </c:url>
                     <li><span class="header"> <a href="${link}"> <span>[${fdto.board_loc_city_code}][${fdto.board_category}]${fdto.board_subject }</a></span>
                        ${fdto.board_content}</li>
                  </c:forEach>
               </c:otherwise>
            </c:choose>
         </ul>
      </div>
      <div class="col one_fourth no_margin_right">
         <h4>관련 사이트</h4>
         <ul class="no_bullet">
            <form action="#" method="get" name="rel_f">
               <fieldset>
                  <select name="rel_select">
                     <option value="http://www.seoul.go.kr/main/index.html">서울특별시청</option>
                     <option value="http://www.gg.go.kr/">경기도청</option>
                     <option value="http://sen.go.kr/">서울특별시 교육청</option>
                     <option value="www.goe.go.kr">경기도교육청</option>
                     <option value="http://lib.seoul.go.kr/">서울도서관</option>
                     <option value="http://www.library.kr/">경기도사이버도서관</option>
                  </select>
                  <input type="image" src="../semiproject/images/rel_site_btn.gif" alt="관련 사이트 이동" />
               </fieldset>
               </form>
         </ul>
      </div>

      <div class="clear"></div>
   </div>
   <!-- END of templatemo_bottom -->
</div>
<!-- END of templatemo_bottom_wrapper -->
<div id="templatemo_footer_wrapper">

   <div id="templatemo_footer">
      KH정보교육원 © 2017 <a href="../semiproject/index.jsp">Communication</a>
   </div>
   <!-- END of templatemo_footer -->
</div>