<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.study.util.Cookies"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<!-- 쿠키는 클라이언트(JS),JSP 모두 생성 가능 합니다. 
     여기서는 JSP 기반으로만 설명합니다.
--> 
<%
  /*  Cookie cookie = new Cookie("love", URLEncoder.encode("영자","utf-8"));
   cookie.setMaxAge(60 * 2); // 2분 정도 
   cookie.setPath("/"); // cookie.setPath("/study");
   cookie.setDomain("study.com");
   //cookie.setPath(request.getContextPath()); */
   Cookie cookie = Cookies.createCookie("love", "조아라", "/", 60*3);
   response.addCookie(cookie);

%> 
<h3> 쿠키 생성 </h3>
이름 : <%=cookie.getName() %> , 값 : <%=cookie.getValue() %>
<a href="viewCookie.jsp">10/viewCookie 로 </a>
<a href="../09/viewCookie.jsp">09/viewCookie</a>
</body>
</html>