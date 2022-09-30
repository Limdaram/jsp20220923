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
	<form action="13paramValues-to.jsp">
		주문일자 : <input type="date" name="date"> <br>
		상품 : 
		book <input type="checkbox" name="prod" value="book"> 
		ipad <input type="checkbox" name="prod" value="ipad">
		phone <input type="checkbox" name="prod" value="phone">
		handcream <input type="checkbox" name="prod" value="handcream">
		ring <input type="checkbox" name="prod" value="ring">
		<br>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>