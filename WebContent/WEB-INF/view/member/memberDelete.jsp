<%@page import="com.study.member.service.MemberServiceImpl"%>
<%@page import="com.study.member.vo.Member"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>  
<!DOCTYPE html>
<html lang="ko">
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
	<div class="row text-center" >
		<div class="alert alert-info col-md-4 col-md-offset-4">
			<p>삭제했습니다.</p>	
		</div>
	</div>
		
	<div class="row">
		<div class="col-md-6 col-xs-3">
			<a href="memberList.do" class="btn btn-sm btn-warning">목록으로</a>
		</div>
	</div>
	
</div>
</body>
</html>














