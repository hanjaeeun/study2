<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>13/ memberList.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
</head>
<body>
<div class="container">
<div class="page-header">
	<h1>회원 목록</h1>
</div>
<div class="row">
<%	

	// JDBC 변수 선언
	Connection conn = null; // 연결                                                                                
	Statement stmt = null; // 구문
	ResultSet rs = null; // 결과 집합, select 한 결과를 처리하는 객

	try {
	
	// OracleDriver driver = new OracleDriver();
	String driver = "oracle.jdbc.driver.OracleDriver"; // 외부 설정파일에서 읽기
	Class.forName(driver);	
	
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "java", "oracle");
	
	String query = " SELECT * FROM tb_member2 ORDER BY mem_name ASC ";
	
	stmt = conn.createStatement(); // (ResultSet.CONCUR_READ_ONLY, ResultSet.CONCUR_READ_ONLY);
	
	rs = stmt.executeQuery(query);
	
%>
<table class="table table-striped">
	<thead>
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>이메일</th>
			<th>마일리지</th>
		</tr>
	</thead>
	<tbody>
		<%
		while(rs.next()){
		%>		
		<tr>
			
			<td><%=rs.getString(1) %></td>
			<td><a href="memberView.jsp?mem_id=<%=rs.getString("mem_id") %>">
			<%=rs.getString("mem_name") %>
			</a> 
			</td>
		
			<td><%=rs.getString("mem_id") %></td>
			<td><%=rs.getString("mem_name") %></td>
			<td><%=rs.getString("mem_phone") %></td>
			<td><%=rs.getString("mem_email") %></td>
			<td><%=rs.getString("reg_date") %></td>
		
		</tr>
		<%
		}
		%>
		
	</tbody>

</table>
</div>
<%
} catch (ClassNotFoundException ex) {

	out.println("드라이버가 없거나, 명칭이 틀렸을 거야~~");

} catch (SQLException ex) {

	out.println("DB 오류 : " + ex.getMessage());

} finally {

	if (rs != null) try{rs.close();}catch(Exception e) {}
	
	if (stmt != null) try{stmt.close();}catch(Exception e) {}
	
	// 연결 세션은 꼭 닫아주세요.
	if (conn != null) try{conn.close();}catch(Exception e) {}

}
%>
</div>
</body>
</html>