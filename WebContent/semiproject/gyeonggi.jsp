<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>경기도</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
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
							<c:param name="location" value="의정부·양주·포천"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '의정부시' or dto.board_loc_city_code eq '양주시' or dto.board_loc_city_code eq '포천시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
				<div class="sidebar_box">
					<h3>
						<font size="4" color="#000000">구리·남양주</font>
						<c:url var="link" value="board">
							<c:param name="city" value="경기도"></c:param>
							<c:param name="location" value="구리·남양주"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '구리시'  or dto.board_loc_city_code eq '남양주시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
				<div class="sidebar_box">
					<h3>
						<font size="4" color="#000000">하남·광주</font>
						<c:url var="link" value="board">
							<c:param name="city" value="경기도"></c:param>
							<c:param name="location" value="하남·광주"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '하남시'  or dto.board_loc_city_code eq '광주시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
				<div class="sidebar_box">
					<h3>
						<font size="4" color="#000000">성남·용인</font>
						<c:url var="link" value="board">
							<c:param name="city" value="경기도"></c:param>
							<c:param name="location" value="성남·용인"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '성남시'  or dto.board_loc_city_code eq '용인시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
				<div class="sidebar_box">
					<h3>
						<font size="4" color="#000000">안양·수원·의왕·안산·군포</font>
						<c:url var="link" value="board">
							<c:param name="city" value="경기도"></c:param>
							<c:param name="location" value="안양·수원·의왕·안산·군포"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '안양시' or dto.board_loc_city_code eq '수원시' or dto.board_loc_city_code eq '의왕시' or dto.board_loc_city_code eq '안산시' or dto.board_loc_city_code eq '군포시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
				<div class="sidebar_box">
					<h3>
						<font size="4" color="#000000">인천·부천·김포·시흥</font>
						<c:url var="link" value="board">
							<c:param name="city" value="경기도"></c:param>
							<c:param name="location" value="인천·부천·김포·시흥"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '인천시' or dto.board_loc_city_code eq '부천시' or dto.board_loc_city_code eq '김포시' or dto.board_loc_city_code eq '시흥시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
				<div class="sidebar_box">
					<h3>
						<font size="4" color="#000000">파주·고양</font>
						<c:url var="link" value="board">
							<c:param name="city" value="경기도"></c:param>
							<c:param name="location" value="파주·고양"></c:param>
						</c:url>
						<a href="${link }" class="right"> <%-- <font size="2" color="#000000">MORE</font> --%>
							<img src="../semiproject/images/plus.png" alt="더보기" />
						</a>
					</h3>
					<div class="sidebar_box_content">
						<ul class="list_bullet">
							<c:forEach items="${aList }" var="dto">
								<c:if
									test="${dto.board_loc_code eq '경기도' and (dto.board_loc_city_code eq '파주시'  or dto.board_loc_city_code eq '고양시') }">
									<li class="flow"><a href="#" target="_blank">[${dto.board_loc_city_code}]
											${dto.board_subject } ${dto.board_readcount }</a></li>
								</c:if>
							</c:forEach>
						</ul>
					</div>
				</div>
				<!-- --------------------------------------------- -->
			</div>
			<div class="clear"></div>
		</div>
		<!-- END of templatemo_main -->
	</div>
	<jsp:include page="../semiproject/footer.jsp" />
	<!-- END of templatemo_footer_wrapper -->
</body>
</html>