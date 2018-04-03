<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--에러가 발생할 경우 페이지 지정   -->
    <%@ page errorPage="/error/msgError.jsp" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<%
   // 08/read.jsp/msg=hello
   String msg = request.getParameter("msg");
 
%>
<!--도메인에  http://localhost:8080/08/read.jsp?msg=hanjaeeun -->
메시지 = <%=msg.toUpperCase() %>
</body>
</html>