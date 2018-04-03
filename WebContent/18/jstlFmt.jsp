<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%
   request.setCharacterEncoding("utf-8");
%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>타이틀을 입력하세요 !!!</title>
     
  </head>
  <body>
    <c:set var="price" value="10000000" />
     <fmt:formatNumber value="${price}" type="number" groupingUsed="false"/> <br>  
     <fmt:formatNumber value="${price}" type="number" pattern="#,###,###.00"/>    <br>  
     <fmt:formatNumber value="${price}" type="currency"/><br>  
     <fmt:formatNumber value="${price}" type="percent"/>  <br>  
  </body>
</html>
