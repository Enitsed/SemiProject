<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>소통 : Communication</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
</head>
<body>
<c:choose>
      <c:when test="${chk==2}">
         <script type="text/javascript">
            alert("아이디/ 비밀번호를 확인해주세요.");
            history.go(-1); //뒤로 가기
            <%
               session.invalidate();
            %>
         </script>
      </c:when>
      
      <c:otherwise>
   <div id="templatemo_wrapper">
      <jsp:include page="../semiproject/header.jsp" />
      <!-- end of templatemo_menu -->
      <jsp:include page="../semiproject/body.jsp" />
      <!-- END of templatemo_main -->
   </div>
   <!-- END of templatemo_wrapper -->
   <jsp:include page="../semiproject/footer.jsp" />
   <!-- END of templatemo_footer_wrapper -->
   </c:otherwise>
   </c:choose>
</body>
</html>