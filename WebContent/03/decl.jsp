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
<!-- 사랑해요 밀키스 <br>

사랑해요 밀키스 <br>
사랑해요 밀키스 <br> -->
<% %>
<%=love(3) %>
이름은 <%=name%>
<%=love2(1000)%>

</body>
</html>
<%!  
String name ="홍길동";
  public String love(int cnt){
	 StringBuilder sb= new StringBuilder();
   long start = System.currentTimeMillis();
	for(int i = 0; i<=cnt; i++ ){
		 
		sb.append("사랑해요 밀키");
	}
	System.out.println("love 소요시간 : "+(System.currentTimeMillis()-start));
	 return sb.toString();
  }
	
 public String love2(int cnt){
	 String sb = "";
	 long start = System.currentTimeMillis();
	 for(int i = 0; i <cnt; i++){
		 sb += "사랑해요 밀키스";
	 }
	 System.out.println("love 소요시간 : "+(System.currentTimeMillis()-start));
	 return sb;
 }
	


%>