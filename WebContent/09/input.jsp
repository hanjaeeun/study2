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
<h3>정보를 입력하세요 </h3>
<form action="result.jsp" method="get">
이름 : <input type="text" name = "name" size= "10" value="hong"><br>
주소 : <input type="text" name="address" size="30" value="seoul"></input><br>
좋아하는 동물 : 
<label><input type="checkbox" name="pet" value="dog">강아지</label>
<label><input type="checkbox" name="pet" value="cat">고양지</label>
<input id="id_pet_pig" type="checkbox" name="pet" value="pig">돼지<br>
<label for="id_pet_pig">돼지</label>
당신의 혈액형 : 
<label><input type="radio" name="blood" value="A"/>A형 </label>
<label><input type="radio" name="blood" value="B"/>B형 </label>
<label><input type="radio" name="blood" value="AB"/>AB형 </label>
<label><input type="radio" name="blood" value="O"/>O형 </label>
<br>
 
<input type="submit" value="전송">

</form>
</body>
</html>