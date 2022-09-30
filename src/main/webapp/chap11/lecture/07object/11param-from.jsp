<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="11param-to.jsp">
		이름 : <input type="text" name="name"> <br>
		좋아하는 음식 : <select name="foods" id="" multiple="" size="5">
			<option value="cake">cafe</option>
			<option value="coffee">coffee</option>
			<option value="milk">milk</option>
			<option value="bread">bread</option>
			<option value="pizza">pizza</option>
		</select>
		<hr>
		<input type="submit">
		
	</form>
</body>
</html>