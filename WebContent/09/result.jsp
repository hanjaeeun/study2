<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
       // POST 방식인 경우 파라미터 인코딩 변경 파라미터 읽기 전에 선언  
        request.setCharacterEncoding("utf-8");
    
    %>
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

<% 
  String  goPage = "";
  String blood = request.getParameter("blood");
  if(blood == null || blood.equals("")){
	  response.sendRedirect("input.jsp");
	  return;
  }
  
  // DB 또는 웹서비스를 활용해서 해당 유명인을 검색 
  List<String> famouse = new ArrayList<String>();
  switch(blood){
  case "A" : goPage ="/09/A.jsp"; 
  famouse.add("박정남");
  break;
  case "B" : goPage ="/09/B.jsp"; 
  famouse.add("박정수");
  
  break;
  case "AB" : goPage ="/09/AB.jsp";
  famouse.add("박정아");
  break;
  case "O" : goPage ="/09/O.jsp";
  famouse.add("박정은");
  break;
 }
  // 이동할 페이지에서 사용하기 위해 저장 
  request.setAttribute("famouse", famouse);
%>

<jsp:forward page="<%=goPage %>"/>

<pre>
if(A형){
}else if(B형){
}else if(AB형){
}else if(O형 )


</pre>
</body>
</html>