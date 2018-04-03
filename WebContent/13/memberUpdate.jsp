<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>13/memberUpdate.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="page-header">
<h3>회원상세정보 </h3>
</div>
<form action="memberUpdate.jsp" method="post">
<div class="row">
	<%
		// JDBC 변수 선언 db 연결
		Connection conn = null; //연결
		Statement stmt = null; //구문S
		ResultSet rs = null; // select 한 결과를 담는 객체
		try {
			// OracleDriver driver = new OracleDriver();
			String dirver = "oracle.jdbc.driver.OracleDriver"; // 외부 설정 파일에서 읽기 
			Class.forName(dirver);

			//데이터 베이스 커넥션 생성 
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "java", "oracle");
			String mem_id = request.getParameter("mem_id");
			String mem_name = request.getParameter("mem_name");
			String mem_phone = request.getParameter("mem_phone");
			String mem_email = request.getParameter("mem_email");
			
			
			String query = " UPDATE tb_member2";
	               query +=" SET mem_name = '"+ mem_name +"'";
	               query +="   , mem_phone = '"+ mem_phone +"'";
	               query +="   , mem_email = '"+ mem_email +"'";
	               query +=" WHERE mem_id = '"+mem_id+"'";

			// Statement 생성
			stmt = conn.createStatement();
			//ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY
			//쿼리 실행 
			int cnt = stmt.executeUpdate(query);
			if(cnt > 0){
				
				
	 %>
	  <div class="tow">
	    성공 
	  </div>
	 <%
			}else{
	 %>	
	 <div class="row">
	   실패
	 </div>
	<%
			}
		} catch (ClassNotFoundException ex) {
			out.println("드라이버가 없거나, 명칭이 틀렸을거야~~~~~");
		} catch (SQLException ex) {
			out.println("DB오류 : " + ex.getMessage());
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (Exception e) {
				}
//연결 세션은 꼭 닫아 주세요  다음 세션 연결을 위해 ~~
			if (conn != null)
				try {
					conn.close();
				} catch (Exception e) {
				}

		}
	%>
</body>
</html>