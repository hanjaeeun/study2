<%@page import="com.study.member.vo.Member"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.study.util.Cookies"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
           
    private static Map<String, Member> userMap = new HashMap();
   	static {
	   //Member member = new Member("gildong","길동","1234","042-719-8850","hong@daum.net",0);
	  // userMap.("ara",)	   
	  userMap.put("hong", new Member("hong","길동","1234","042-719-8850","hong@daum.net",0));
	  userMap.put("ara", new Member("ara","아라","1234","042-719-8850","ara@daum.net",0));
	  userMap.put("nolja", new Member("nolja","놀자","1234","042-719-8850","ara@daum.net",0));
   }

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>12/ loginCheck.jsp</title>
</head>
<body>
<%
   
	String id = request.getParameter("id");
	String pass = request.getParameter("passwd");
	String id_save= request.getParameter("id_save");
	// id, pass중 하나라도 널이면
	
	
	if(id == null || pass == null || "".equals(id) || id.equals("")) {
%>
	아이디나 패스워드가 비어있습니다. <br>
	<a href="login.jsp">로그인 페이지</a>
<% 
		
	}else{
		// id가 널이 아니고 userMap 에 해당 id  존재하는지 체크 
		// 첫화면(index.jsp)러 리다이렉트
		if(userMap.containsKey(id)) {
			Member member = userMap.get(id);
			if(member.getMem_pwd().equals(pass)){
				//로그인에 성공했으므로 세션에 정보 저장 
		    session.setAttribute("LOGIN", member);
			Cookie cookie = null;
			if("Y".equals(id_save)){
							cookie = Cookies.createCookie("REMEMBER_ID",id,"/",60*60*24*7);
		    	
			}else{
				//이전에 혹시 쿠키가 저장 되어 있을 수 있으므로 삭제 
				cookie = Cookies.createCookie("REMEMBER_ID","","/",0);
			}
			response.addCookie(cookie);	
		    response.sendRedirect(request.getContextPath()+"/index.jsp");
			
			
			//String msg = URLEncoder.encode("로그인에 성공했네요~~","utf-8");
			//String msg = "로그인에 성공했네요~~";
			//response.sendRedirect("/study/index.jsp?moon=" + msg);
			}else{
				out.println("아이디와 일치하지 않습니다.~~");
				out.println("<a href=\"login.jsp\">로그인 페이지</a>");
			}
			}else {
			out.println("아이디와 비밀번호가 같지 않아요~~");
			out.println("<a href=\"login.jsp\">로그인 페이지</a>");
		}
	}


%>




</body>
</html>