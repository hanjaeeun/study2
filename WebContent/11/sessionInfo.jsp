<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.study.member.vo.Member"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
    Date time = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
%>
<ul>
 <li>세션 ID <%=session.getId() %></li>
 <%
   time.setTime(session.getCreationTime());
 
 %>
 <li>생성 시간 : <%=format.format(time) %></li>
 <%
   time.setTime(session.getLastAccessedTime());
 
 %>
 <li>최근 시간 : <%=format.format(time) %></li>
 <li>유효시간 : <%=session.getMaxInactiveInterval() %></li>
 
</ul>
<%
    Member member = new Member();
    member.setMem_id("Hong");
    member.setMem_name("길동이");
    member.setMem_email("hong@daum.net");
    
    session.setAttribute("LOGIN", member);
    

%>
<a href="viewSession.jsp">viewSession 으로 </a>
</body>
</html>