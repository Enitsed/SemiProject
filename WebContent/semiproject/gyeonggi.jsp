<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>소통 : 경기</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<style type="text/css">
.sidebar_box {
   min-height:230px;
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

            <!-- --------------------------------------------- -->
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">의정부·양주·포천</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="의정부시·양주시·포천시"></c:param>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '의정부시' || dto.board_loc_city_code eq '양주시' || dto.board_loc_city_code eq '포천시'}">
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
            <!-- --------------------------------------------- -->
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">구리·남양주</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="구리시·남양주시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '구리시' || dto.board_loc_city_code eq '남양주시'}">
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
            <!-- --------------------------------------------- -->
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">하남·광주</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="하남시·광주시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '하남시' || dto.board_loc_city_code eq '광주시'}">
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
            <!-- --------------------------------------------- -->
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">성남·용인</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="성남시·용인시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '성남시' || dto.board_loc_city_code eq '용인시'}">
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
                  <font size="4" color="#000000">동두천·안성·이천</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="동두천시·안성시·의정부시·이천시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '동두천시' || dto.board_loc_city_code eq '안성시' || dto.board_loc_city_code eq '의정부시' || dto.board_loc_city_code eq '이천시'}">
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
                  <font size="4" color="#000000">오산·평택·화성</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="오산시·평택시·화성시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '오산시' || dto.board_loc_city_code eq '평택시' || dto.board_loc_city_code eq '화성시'}">
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
            <!-- --------------------------------------------- -->
            <!-- -----------------------------------------끊음---- -->
         </div>
         <!--  dddddddddd -->

         <div id="sidebar" class="half right" align="center"
            style="width: 45%; height: 45%">
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">안양·수원·의왕·안산·군포</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="안양시·수원시·의왕시·안산시·군포시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '안양시' || dto.board_loc_city_code eq '수원시' || dto.board_loc_city_code eq '의왕시' || dto.board_loc_city_code eq '군포시'}">
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
            <!-- --------------------------------------------- -->
            <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">부천·김포·시흥</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="부천시·김포시·시흥시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '부천시' || dto.board_loc_city_code eq '김포시' || dto.board_loc_city_code eq '시흥시'}">
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
                  <font size="4" color="#000000">파주·고양</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="파주시·고양시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
                     <img src="../semiproject/images/plus.png" alt="더보기" />
                  </a>
               </h3>
               <div class="sidebar_box_content">
                  <table width="150%" border="0" cellpadding="0" cellspacing="0">
                  <tr class="listUnderline1">
                     <td colspan="7"></td>
                  </tr>
                  
                  <tr>
                     <td class="tblStyle00" align="center"><b>지역</b></td>
                     <td class="tblStyle01" align="center"><b>제목</b></td>
                  <td class="tblStyle00" align="center"><b>작성자</b></td>
                     <td class="tblStyle00" align="center"><b>작성일</b></td>
               </tr>
               
                     <c:forEach items="${aList }" var="dto">
                     <tr>
                     <c:choose>               
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '파주시' || dto.board_loc_city_code eq '고양시'}">
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
            <!-- --------------------------------------------- -->
             <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">과천·광명</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="과천시·광명시"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '과천시' || dto.board_loc_city_code eq '광명시'}">
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
            <!-- --------------------------------------------- -->
             <div class="sidebar_box">
               <h3>
                  <font size="4" color="#000000">가평·양평·여주·연천</font>
                  <c:url var="link" value="board">
                     <c:param name="city" value="경기도"></c:param>
                     <c:param name="location" value="가평군·양평군·여주군·연천군"></c:param>
                  </c:url>
                  <a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
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
                        <c:when test="${dto.board_loc_code eq '경기도' && dto.board_loc_city_code eq '가평군' || dto.board_loc_city_code eq '양평군' || dto.board_loc_city_code eq '여주군' || dto.board_loc_city_code eq '연천군'}">
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