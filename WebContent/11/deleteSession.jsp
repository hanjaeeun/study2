<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
현재 id : <%=session.getId() %> <br>
<%
  // 속성에 저장된 임의 키를 제거 
  //session.removeAttribute("LOGIN");
  // 현재 세션 전체를 무효화 () 
  session.invalidate();
%>
로그아웃되었습니다.
<a href="viewSession.jsp">viewSession.jsp</a>
</body>
</html>