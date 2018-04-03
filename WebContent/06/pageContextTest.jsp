<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>06/ pageContextTest.jsp</title>
</head>
<body>
당신의 IP :<%=request.getRemoteAddr() %><br>
당신의 IP :<%=pageContext.getRequest().getRemoteAddr() %><br>
URI : <%=request.getRequestURI() %>
<!-- 형변환  -->
URI 2 : <%=((HttpServletRequest)pageContext.getRequest()).getRemoteAddr() %><br>
<hr>
EL 표기법 IP : ${pageContext.request.remoteAddr}<br> 
El 표기법 URI : ${pageContext.request.requestURI}<br>

문제 : EL표기법  이미지 절대 경로로 보여주세요 
<img alt="" src="${pageContext.request.contextPath}/images/tomato.jpg" width="100px" /> <br> 
<img alt="" src="${pageContext.request}/images/tomato.jpg" width="100px" /> <br> 
 
 <br> 
</hr>
</body>
</html>