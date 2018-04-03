<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>/ index.jsp</title>
</head>
<body>
<h2>A-Ra 사이트에 오신걸 환영합니다.</h2>
내용
<p>
<a href="11/login.jsp">로그인</a>
<a href="11/viewSession.jsp">viewSession 으로 </a>
<%-- <%= request.getParameter("moon") %>
</p>
<%
     // 현재 속성에 저장된 lastUser 를 출력 
     String lastUser = (String)application.getAttribute("key");
	if(lastUser != null){
%>	
		마지막 접속자 IP : <%=lastUser %>	
<% 		
	}
%> --%>
</body>
</html>