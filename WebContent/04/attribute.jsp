<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<%
 Enumeration<String> en = application.getAttributeNames();
 out.println(request.getParameter("abcd").toUpperCase());
%>
<ul>
   Application 속성에 있는 것들 
   <%
     while(en.hasMoreElements()){
    	 String key = en.nextElement();
    	 Object obj = application.getAttribute(key);
         out.println("<li>"+key + "="+obj.toString() +"</li>");    
     }
   
   %>


</ul>
</body>
</html>