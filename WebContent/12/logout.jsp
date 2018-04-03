<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>12/ logout.jsp</title>
</head>
<body>
현재 id : <%=session.getId() %> <br>
<%
  // 현재 세션 전체를 무효화 () 
  session.invalidate();
  //바로 index로 리다이렉트 또는 스크립트로 메시지 보여주고 이동 
  //response.sendRedirect(request.getContextPath() + "/index.jsp");
  
%>
<script type="text/javascript">
	alert("로그아웃되었습니다.");
	location.href="<%=request.getContextPath()%>/index.jsp";
</script>

</body>
</html>