<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>08/ welcome.jsp</title>
</head>
<body>
<%
    String ip = request.getRemoteAddr();
    application.setAttribute("key", ip);
%>
당신의 IP : <%=ip %>를 저장했어요 ~~~<br>
ctxPath = <%=ctxPath %><br>
당신의 IP : <%=ip %> 를 저장 했어요 ~~~ 
<a href="../">홈으로 </a>
</body>
</html>