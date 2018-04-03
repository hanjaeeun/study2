
<%@page import="com.study.member.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
한재은 사이트 
 <a href="<%=request.getContextPath() %>/index.jsp">Home</a>
 <!--jsp:include 이외에 추가 가 필요하면 
      java:param value="36" jaeeun 요청한것을 받아야하니깐  -->
 <a href="<%=request.getContextPath() %>/member/memberList.do">회원관리</a>
 <a href="<%=request.getContextPath() %>/board/boardList.do">게시판</a>
 
 <%
    Member mem =(Member)session.getAttribute("LOGIN");
 if(mem != null){
 %>
 <!-- 로그인 상태인t 경우   -->
 ${LOGIN.mem_id}님 방가 ~~~ <br>
 <%=mem.getMem_email() %>
 <a href="<%=request.getContextPath() %>/12/logout.jsp">로그아웃</a>
 <!-- 비 로그인 상태인 경우  -->
 <%
 }else{
 %>
 <a href="<%=request.getContextPath() %>/12/login.jsp">로그인</a>
 <%
 }
 %>
</div>