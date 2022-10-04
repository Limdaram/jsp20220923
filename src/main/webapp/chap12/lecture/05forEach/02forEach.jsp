<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="1" end="9" var="x">
		<c:forEach begin="1" end="9" var="y">
			${x } x ${y } = ${x * y } <br>		
		</c:forEach>
		<hr>
	</c:forEach>
</body>
</html>