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
	<form action="05to.jsp">
		num1 : <input type="text" name="num1" placeholder="num1을 입력하세요"> <br>
		num2 : <input type="text" name="num2" placeholder="num2을 입력하세요"> <br> <br>
		num3 : <input type="text" name="num3"> <br>
		num4 : <input type="text" name="num4"> <br>
		<hr>
		<input type="submit" value = "전송">
	</form>
</body>
</html>