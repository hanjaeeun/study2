<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("utf-8");
%>   
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>/ index.jsp</title>
</head>
<body>
<table >
   <colgroup>
     <col width="20%"/>
     <col/>
   </colgroup>
    <tr>
      <td colspan="2">
      <!-- 메뉴영역 START -->
      <jsp:include page="/include/top.jsp" flush="false"/>

      <!-- 메뉴영역 End  -->
      </td>
    </tr>
    <tr>
       <td>
        <!-- 좌측메뉴 START  -->
       <%
        int sum = 5050;
       %>
      <%--   <jsp:include page="/include/left.jsp" flush="false"/> --%>
      <%--  <%@include file="/include/left.jsp" %> --%>
       <!--  좌측메뉴  END  -->
       
       </td>
       <jsp:include page="/include/left.jsp" flush="false" /> 
       <td>
       	<!-- 본문 START  -->
          A-RA 사이트 입니다.
		<!-- 본문  END  -->
       </td>
    </tr>
    <tr>
    <td colspan="2">
      <!-- 푸터 START  -->
       <jsp:include page="/include/footer.jsp" flush="false" />
      <!-- 푸터  END  -->
      </td>
    </tr>
</table>
</body>
</html>