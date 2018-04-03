<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 request.setCharacterEncoding("utf-8");

%>   
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script type="text/javascript" src="<%=ctxPath%>/js/jquery.min.js %>"></script> 

</head>
<body>
<table >
   <colgroup>
     <col width="20%"/>
     <col/>
   </colgroup>
    <tr>
      <td colspan="2">
      <!-- 메뉴영역 START  top.jsp?age=36&id=ara-->
      <jsp:include page="/include/top.jsp" flush="false">
      <jsp:param value="36" name="age"/>
       <jsp:param value="jaeeun" name="id"/>
       </jsp:include>
      <!-- 메뉴영역 End  -->
      </td>
    </tr>
    <tr>
       <td>
        <!-- 좌측메뉴 START  -->
       <%
        int sum = 5050;
       %>
      <%--   <jsp:include page="/include/left.jsp" flush="false"/> --%>
      <%@include file="/include/left.jsp" %> 
       <!--  좌측메뉴  END  -->
       </td>
       <td>
       <!-- 본문 START  -->
       
경로 1 : <%=application.getRealPath("") %><br>
경로 2 : <%=application.getRealPath("/08/notice.txt") %><br>
경로 3() :<%=request.getRealPath("/08/notice.txt") %><br>
<%
   String path = application.getRealPath("/08/notice.txt");
%>
<hr>
<%
char[] buff = new char[32];
int len = -1;
InputStreamReader reader = null;
try{
	reader = new InputStreamReader(new FileInputStream(path),"utf-8");
	while((len = reader.read(buff)) != -1){
		out.print(new String(buff,0,32));
	}
}catch(IOException ex){
	out.print(ex.getMessage());
}finally{
	if(reader != null) reader.close();
}

%>
<!-- 본문  END  -->
       </td>
    </tr>
    <tr>
    <td colspan="2">
      <!-- 푸터 START  -->
       <jsp:include page="/include/footer.jsp" flush="false"/>
      <!-- 푸터  END  -->
      </td>
    </tr>
</table>
</body>
</html>