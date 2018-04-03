<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>04/ result.jsp</title>
</head>
<body>
<h3>getParameter()</h3>
이름 : <%=request.getParameter("name") %> <br>
주소 : <%=request.getParameter("address") %> <br>
동물: <%=request.getParameter("pet") %> <br>
<%
 String[] pets =request.getParameterValues("pet");
if(pets != null){
	
	for(String v : pets){
	 out.println("동물" +v+"<br>");	
	}
}

%>
<h3>getParameter()</h3>
<% Enumeration en = request.getParameterNames();
   while(en.hasMoreElements()){
	   String nm = (String)en.nextElement();
	   out.println(nm + " = "+request.getParameter(nm) + "<br>");
	   
   }
   



%>
<h3>getParameterMap()</h3>
<%
Map<String,String[]> map =request.getParameterMap();
Iterator<String> keys = request.getParameterMap().keySet().iterator();
while(keys.hasNext()){
	String key = keys.next();
	out.println(key + "=" +map.get(key)[0]);
}
%>
<hr>
<%
   for(Map.Entry<String,String[]> elem : map.entrySet()){
	   out.println(elem.getKey() + " = " + elem.getValue()[0] + "<br>");
   }

%>
</body>
</html>