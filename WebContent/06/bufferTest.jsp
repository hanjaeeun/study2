<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page buffer="8kb" autoFlush="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
버퍼 사이즈 : <%=out.getBufferSize() %> <br>
남은 버퍼 : <%= out.getRemaining() %><br>
자동 플러시 : <%=out.isAutoFlush() %><br>

<%
    out.flush();
	// 사용자 요청 후에 내부의 복작한 작업으로 화면로딩이 느려지면 
	// 2~3초내로 결과가 보여야 되는데.. 응답이 없으면 사용자가 떠나죠 
   String msg = "Java Server Pages JSP 안녕 <br>"; //32byte
   for(int i = 1; i <10000; i++){
	   // 복잡한 작업전에 flush 를 하시고, 내부에서도 일정타임에 flush 
	   if(i % 10 ==0)out.flush(); // 100번 마다 내보내
	   out.println(i+msg);
   }
%>
</body>
</html>