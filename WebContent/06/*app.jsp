<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>06/ app.jsp </title>
</head>
<body>
<pre>
"/"  로 시작하면 절대 경로 
"/"  로 시작하지 않으면 상대 경로 
.   : 현재 포인터 
..  : 상위 포인터 
</pre>
1.<img alt="" src="/study/images/tomato.jpg" width="100px" /> <br>
2.<img alt="" src="../images/tomato.jpg" width="100px" /> <br>
3.<img alt="" src="/images/tomato.jpg" width="100px" /> <br>
4.<img alt="" src="<%=request.getContextPath() %>/images/tomato.jpg" width="100px" /> <br>


</body>
</html>