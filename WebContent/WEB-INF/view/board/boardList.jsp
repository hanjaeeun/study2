<%@page import="com.study.board.vo.BoardSearch"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="com.study.board.service.BoardServiceImpl"%>
<%@page import="com.study.board.vo.Board"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>타이틀을 입력하세요 !!!</title>
    <!-- 부트스트랩 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 
  </head>
  <body>
  <div class="container">
<div class="page-header">
	<h2>게시판 목록</h2>
</div>
<!-- 검색  폼   -->
<div class="row">
<form action="" method="post">
   검색구분 : <select name="searchType">
              <option value="all">전체</option>
              <option value="bo_title">제목</option>
       <option value="bo_writer">작성자</option>
       <option value="bo_content">내용 </option>
       </select>
       <input type="" name="searchWord" value='${search.searchWord}'>
       <button type="submit">검색</button>
</form>
</div>

<div class="row">
	<div class="col-md-4 col-md-offset-8  text-right">
		<a href="boardForm.do" class="btn btn-sm btn-primary">글등록</a>	
	</div>
</div>

<div class="row">
${search.totalRowCount} / ${search.totalPageCount}
<table class="table table-striped">
    <colgroup>
         <col style="width: 8%;" />
         <col style="width: 45%;" />
         <col style="width: 15%;" />
         <col style="width: 10%;" />
         <col style="width: 15%;" />
    </colgroup>
	<thead>
		<tr>	
			
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>등록일</th>
			</tr>
	</thead>
	<tbody>
		<c:if test="${empty list}">
			<tr>
				<td colspan="5">목록이 조회되지 않았습니다.</td>
			</tr>
		</c:if>
		<c:if test="${not empty list}">
			<c:forEach items="${list}" var="board" >		
				<tr>
					<td>${board.bo_no}
					<td><a href="boardView.do?bo_no=${board.bo_no}">${board.bo_title}</a>
					     </td>
					<td>${board.bo_writer}</td>
					<td>${board.bo_read_cnt}</td>
					<td>${board.bo_reg_date}</td>
				</tr>
			</c:forEach>
		</c:if>
	</tbody>
</table>
</div>
<div class="text-center">
    
   <div class="row">
      <ul class="pagination">
		  <c:if test="${search.startPage > 1}">
		  <li><a href="boardList.jsp?currentPage=${search.startPage - 1}" aria-label="Previous">
		     <span aria-hidden="true">&laquo;</span>
           </a></li>                        		   
		  </c:if>           
         <c:forEach var="i" begin="${search.startPage}" end="${search.endPage}" >
          
          <c:if test="${i eq search.currentPage}">
          
           <li class="active"><a href="#">${i}</a></li>
          </c:if> 
          <c:if test="${i ne search.currentPage}">
            <li><a href="boardList.do?currentPage=${i}">${i}</a></li>
          </c:if> 
          </c:forEach> 
          <c:if test="${search.endPage < search.totalPageCount}">
		  <li><a href="boardList.do?currentPage=${search.endPage  + 1}" aria-label="Next">
		     <span aria-hidden="true">&raquo;</span>
           </a>
           </li>                        		   
		  </c:if>         
     </ul>   
   </div>

 



  
</div>

</div>
</body>
</html>





