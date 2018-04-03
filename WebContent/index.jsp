<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<style>
   #header{}
   #left{width:20%;float:left;}
   #contnents{width:80;float:left;}
   #footer{clear:both;}
</style>
</head>
<body>
	<div>
		<div id="header">
		<!-- 메뉴영역 START -->
		<jsp:include page="/include/top.jsp" flush="false" /> 
		<!-- 메뉴영역 End  -->
		</div>
		<div>
			<div id="left">
			    <jsp:include page="/include/left.jsp" flush="false"/> 
				<%--  <%@include file="/include/left.jsp" %> --%> <!--  좌측메뉴  END  -->
			</div>
			<div id="contents"><jsp:include page="/include/left.jsp" flush="false" />
			
				<!-- 본문 START  --> A-RA 사이트 입니다. <!-- 본문  END  --></div>
		</div>
		<div id="footer"><!-- 푸터 START  --> <jsp:include page="/include/footer.jsp"
					flush="false" /> <!-- 푸터  END  --></div>
	</div>

</body>
</html>