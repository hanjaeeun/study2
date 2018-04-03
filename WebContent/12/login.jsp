<%@page import="java.net.URLEncoder"%>
<%@page import="com.study.util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>12/login.jsp</title>
</head>

<body>
<%

    Cookies cookies = new Cookies(request);
    String temp = cookies.getValue("REMEMBER_ID");  
    String id = "";
    String checked = "" ;
    if(temp != null && "".equals(temp)){
    	    	id = temp;
    	    	checked = "checked='checked'";
    	}
    

%>
<h3>로그인</h3>
<form action="loginCheck.jsp" method="post">
아이디 : <input type="text" name="id" value="<%=id %>"> <br>
비밀번호 : <input type="password" name="passwd"> <br>
<label><input type="checkbox" name="id_save" value="Y" <%=checked %>>ID 기억하기</label><br>
<input type="submit" value="로그인" >

</form>



</body>
</html>