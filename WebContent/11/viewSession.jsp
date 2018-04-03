<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.study.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<h4>직접 꺼내어 사용 </h4>
<%
  Member mem = (Member)session.getAttribute("LOGIN");
  if(mem != null){
%>
로그인 했구나 ~~~ <br>
이메일 : <%=mem.getMem_email() %> <br>
<%
  }else{
	  out.print("로그인 해주세여");
  }

%>
<hr>
로그인 : ${LOGIN.mem_id}<br>
이  름 : ${LOGIN.mem_name} <br>
 <hr>
 <a href="sessionInfo.jsp">sessionInfo</a>
 <a href="deleteSession.jsp">deleteSession</a>

</body>
</html>