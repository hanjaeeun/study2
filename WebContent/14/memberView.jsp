<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="page-header">
	<h2>회원 상세 정보</h2>
</div>
<div class="row">
<%
//JDBC 변수 선언
Connection conn = null; // 연결
PreparedStatement  pstmt = null; // 구문
ResultSet  rs = null;   // select 한 결과를 담는 객체

try{
	// OracleDriver driver = new OracleDriver();
    //String driver = "oracle.jdbc.driver.OracleDriver"; // 외부 설정파일에서 읽기   
	// Class.forName(driver);
 	
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe"
			                  , "java", "oracle");
	
	String mem_id = request.getParameter("mem_id");	
	// String query = "SELECT * FROM tb_member WHERE mem_id = '" + mem_id + "'";
	String query = "SELECT * FROM tb_member2 WHERE mem_id = ? ";	
	                                              
	pstmt = conn.prepareStatement(query); //ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY);
	pstmt.setString(1, mem_id);
	rs = pstmt.executeQuery();
%>
<table class="table">
	<tbody>
		<%
		if(rs.next()){
		%>
		<tr>
			<th>ID</th>
			<td><%=rs.getString("mem_id") %></td>
		</tr>		
		<tr>
			<th>이름</th>
			<td><%=rs.getString("mem_name") %></td>
		</tr>
		<tr>
			<th>연락처</th>
			<td><%=rs.getString("mem_phone") %></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=rs.getString("mem_email") %></td>
		</tr>
		<tr>
			<th>가입일</th>
			<td><%=rs.getString("reg_date") %></td>
		</tr>
		<%
		}else{
		%>
		<tr>
			<td>해당 회원이 존재하지 않습니다.</td>
		</tr>
		<%	
		}
		%>
	</tbody>
</table>
</div>

<div class="row">
	<div class="col-md-6">
		<a href="memberList.jsp" class="btn btn-sm btn-warning">목록으로</a>
	</div>
	<div class="col-md-6 text-right">
		<a href="memberEdit.jsp?mem_id=<%=mem_id%>" class="btn btn-sm btn-primary">수정</a>	
	</div>
</div>


<%
//}catch(ClassNotFoundException ex){
//	out.println("드라이버가 없거나,  명칭이 틀렸을거야~~~~");
}catch(SQLException ex){
	out.println("DB 오류 : " + ex.getMessage());
	ex.printStackTrace();
}finally{
	if(rs != null) try{rs.close();}catch(Exception e){}
	if(pstmt != null) try{pstmt.close();}catch(Exception e){}
	
	// 연결세션은 꼭 닫아주세요 
	if(conn != null) try{conn.close();}catch(Exception e){}
}
%>

</div>
</body>
</html>














