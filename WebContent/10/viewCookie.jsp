<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.study.util.Cookies"%>
<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<!-- 쿠키를 개별적으로 읽을 수 없다  -->
<%
   Cookie[] cookies = request.getCookies();
   if(cookies !=null && cookies.length > 0){
	   for(Cookie cookie : cookies){
		   //모든 쿠키를 를 보임
		   out.println(cookie.getName());
		   out.println("=");
		   out.println(URLDecoder.decode(cookie.getValue(),"utf-8"));
		   out.println("<br>");
	   }
   }

%>
<hr>
<!-- request 사용자 마다 다르기 때문에 cookies 객체로 형 -->
<%
  Cookies box = new Cookies(request);

%>
love = <%=box.getValue("love") %> <br>
</body>
</html>