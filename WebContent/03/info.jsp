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
<%-- 디렉티브 : 페이지 설정,태그,외부파일 
      <% ~~~~~ %> : 스크립트릿 , 자바코드 영역 
      <%= ~~%> : 표현식, out.print(); 의 약식 표현
      <%! ~~~ %>: 선언부, 멤버변수 , 멤버메서드 생성 
      
 --%>
<%-- <%
   int sum = 0;
   for(int i = 1 ; i <=10 ; i++){
	   sum = sum + i;
	   out.println(i+"까지의 결과 = "+ sum+ "<br>");
   }
   
%> --%>
<% int sum = 0;
 for(int i = 1; i<=10; i++){
	 sum += i;
 %>
<%=i%> 까지의 결과 = <%=sum%><Br>
<%} %>


<%=1+2+3 %><br>
<% out.println(1+2+3); %>

</body>
</html>