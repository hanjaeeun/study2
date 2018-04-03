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

List<Float> f = (List<Float>)request.getAttribute("famouse");

%>
유명인 : 
<%

 for(Float n : f){
	 out.println(n + ",");
 }

%>
<!-- DB 또는 웹서비스를 활용해서 해당 A 유명인을 검색해서 출력   -->
<hr>
<p>
<h3>A형</h3>
<p>장점	세심함, 풍부한 감수성, 내성적
단점	강한 뒤끝과 집착, 과민반응, 비관적, 의심과 불신, 치사함, 계산적
</p>
</p>
</hr>

</body>
</html>