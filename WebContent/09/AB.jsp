<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
이름 : <%=request.getParameter("name") %>
주소 :<%=request.getParameter("address") %>
혈액형 :<%=request.getParameter("blood") %>
좋아하는 동물 : <%=request.getParameter("pet") %>
<hr>
<%

List<String> f = (List<String>)request.getAttribute("famouse");

%>
유명인 : 
<%

 for(String n : f){
	 out.println(n + ",");
 }

%>
<p>
<h3>AB형</h3>
<p>
장점	냉철함, 예리함, 합리적
단점	[모호한 표현]4차원적, 정신이상자로 보임, 변태 같아 보임
</p>
</p>
</hr>

</body>
</html>