<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.study.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
      request.setCharacterEncoding("utf-8"); 
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>10/ regist.jsp</title>
</head>
<body>
<h3>정보확인</h3>
아이디 :<%=request.getParameter("mem_id") %><br>
패스워드 :<%=request.getParameter("mem_pwd") %><br>
이름 :<%=request.getParameter("mem_name") %><br>
<hr>

<jsp:useBean id="m" class="com.study.member.vo.Member"></jsp:useBean>
<jsp:setProperty property="*" name="m"/>

<%
   Member mem1 = new Member();
  mem1.setMem_name("홍길동");
  mem1.setMem_id(request.getParameter("mem_id"));
  %>
  아이디 : <%=mem1.getMem_id() %><br>
  이름 : <%=mem1.getMem_name() %>
  <hr>
<jsp:useBean id="mem2" class="com.study.member.vo.Member" scope="page"/>
<jsp:setProperty property="mem_name" name="mem2" value="보드마카"/>
<jsp:setProperty property="mem_id" name="mem2" param="mem_id"/>
아이디 : <jsp:getProperty property="mem_id" name="mem2"/><br>
이름 : <jsp:getProperty property="mem_name" name="mem2"/> 
 아이디 : <%=mem2.getMem_id() %><br>
이름 : <%=mem2.getMem_name() %> <br>
아이디(EL) :${mem2.mem_id} <br>
이름(EL):${mem2.mem_name}<br>

  

</body>
</html>