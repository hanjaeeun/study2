<%@page import="com.study.member.vo.Member"%>
<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html lang="ko" >
<fmt:setLocale value="en"/>
<fmt:bundle basename="resource.message"> 
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>타이틀을 입력하세요!!</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>	
  </head>  
<body>
<div class="container">
<div class="page-header">
   <h2><fmt:message  key="MEMBER.TITLE" /></h2>

</div>
<div class="row">

<table class="table">
	<tbody>
		<c:if test="${not empty member}">
			<tr>
				<th> <fmt:message key="MEMBER.ID" />   </th>
				<fmt:message key="MEMBER.MESSAGE" var="msg">
				   <fmt:param value="${member.mem_name}" /> 
				   <fmt:param value="1004" />
				</fmt:message>
				<td title="${msg}"> ${member.mem_id}</td>
			</tr>		
			<tr>
				<th><fmt:message key="MEMBER.NAME" /> </th>
				<td>${member.mem_name}</td>
			</tr>
			<tr>
				<th><fmt:message key="MEMBER.PHONE" /> </th>
				<td>${member.mem_phone}</td>
			</tr>
			<tr>
				<th><fmt:message key="MEMBER.EMAIL" /></th>
				<td>${member.mem_email}</td>
			</tr>
			<tr>
				<th>가입일</th>
				<td>${member.reg_date}</td>
			</tr>
		</c:if>
		<c:if test="${empty member }">
			<tr>
 				<td><fmt:message key="MEMBER.NOTFOUND" /></td>		 
				
				</tr>
		</c:if>
	</tbody>
</table>
</div>

<div class="row">
	<div class="col-md-6">
		<a href="memberList.do" class="btn btn-sm btn-warning">목록으로</a>
		<fmt:message key="MEMBER.LIST"></fmt:message>
	</div>
	<div class="col-md-6 text-right">
		<a href="memberEdit.do?mem_id=${member.mem_id}" class="btn btn-sm btn-primary">수정</a>	
	    <fmt:message key="MEMBER.SUBMIT"></fmt:message>
	</div>
</div>
</div>
</body>
</fmt:bundle>
</html>














