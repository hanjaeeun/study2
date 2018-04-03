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
<%
 String log = application.getInitParameter("logEnabled");
 String level = application.getInitParameter("debugLevel");
 boolean logEnable = Boolean.parseBoolean(log);
 int debugLevle = Integer.parseInt(level);
 if(logEnable){
	 out.println("당신의 IP ="+request.getRemoteAddr());
 }
%>
</body>
나른한 오후
<code>
서버정보 : <%=application.getServerInfo() %>
서블릿 : <%=application.getMajorVersion() %>.<%=application.getMinorVersion() %>
</code>
<%
  application.log("화요일");
log("JSP 로그");
%>
</html>