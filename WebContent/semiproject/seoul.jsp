<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>소통 : 서울</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<style type="text/css">
.sidebar_box {
   min-height: 230px;
}

table {
   table-layout: fixed; 
}

.tblStyle01{
    overflow: hidden;
    text-overflow:ellipsis; 
    white-space: nowrap;  
}

</style>
</head>
<body>
   <div id="templatemo_wrapper">
      <jsp:include page="../semiproject/header.jsp" />
      <!-- end of templatemo_menu -->

      <div id="templatemo_main">
         <div id="sidebar" class="half left" align="center"
            style="width: 45%; height: 45%">
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">종로·중구·용산</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="종로구·중구·용산구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>

               <div class="sidebar_box_content">
               <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '종로구' || dto.board_loc_city_code eq '중구' || dto.board_loc_city_code eq '용산구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
                  
               </div>
               <!-- <div align="center">
                  <a href="#" class="more">More</a>
               </div> -->
            </div>
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">도봉·강북·성북·노원</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="도봉구·강북구·성북구·노원구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '도봉구' || dto.board_loc_city_code eq '강북구' || dto.board_loc_city_code eq '성북구' || dto.board_loc_city_code eq '노원구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
                    
            </table>
               </div>
               <!-- <div align="center">
                  <a href="#" class="more">More</a>
               </div> -->
            </div>
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">동대문·중랑·성동·광진</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="동대문구·중랑구·성동구·광진구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '동대문구' || dto.board_loc_city_code eq '중랑구' || dto.board_loc_city_code eq '성동구' || dto.board_loc_city_code eq '광진구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
               </div>
               <!--    <div align="center">
                  <a href="#" class="more">More</a>
               </div> -->
            </div>
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">강동·송파</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="강동구·송파구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '강동구' || dto.board_loc_city_code eq '송파구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
               </div>

            </div>
         </div>

         <div id="sidebar" class="half right" align="center"
            style="width: 45%; height: 45%">
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">서초·강남</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="서초구·강남구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '서초구' || dto.board_loc_city_code eq '강남구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
               </div>

            </div>
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">동작·관악·금천</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="동작구·관악구·금천구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '동작구' || dto.board_loc_city_code eq '관악구' || dto.board_loc_city_code eq '금천구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
               </div>

            </div>
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">강서·양천·구로·영등포</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="강서구·양천구·구로구·영등포구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '강서구' || dto.board_loc_city_code eq '양천구' || dto.board_loc_city_code eq '구로구' || dto.board_loc_city_code eq '영등포구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
               </div>

            </div>
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">은평·마포·서대문</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="서울특별시"></c:param>
                     <c:param name="location" value="은평구·마포구·서대문구"></c:param>
                  </c:url>
                  <a href="${link }" class="right">
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="180%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center" width="50px"><b>지역</b></td>
                     <td class="tblStyle01" align="center" width="150px"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '서울특별시' && dto.board_loc_city_code eq '은평구' || dto.board_loc_city_code eq '마포구' || dto.board_loc_city_code eq '서대문구'}">
                          <c:url var="d" value="view">
                                 <c:param name="num" value="${dto.board_num }"></c:param>
                              </c:url>
                           <td class="tblStyle00" align="center">[${dto.board_loc_city_code }]</td>
                           <td class="tblStyle01" ><a href="${d}" target="_blank"><span>[${dto.board_category}]</span>${dto.board_subject }</a></td>
                           <td class="tblStyle00" align="center">${dto.user_id}</td>
                           <td class="tblStyle00" align="center">${dto.board_date}</td>
                        </c:when>
                     </c:choose>
                     </tr>
                    </c:forEach>
            </table>
               </div>
            </div>
         </div>
         <div class="clear"></div>
      </div>
      <!-- END of templatemo_main -->
   </div>
   <!-- END of templatemo_main -->
   <jsp:include page="../semiproject/footer.jsp" />
   <!-- END of templatemo_footer_wrapper -->
</body>
</html>