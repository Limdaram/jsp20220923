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
	<%-- 08forEach?left=1&&right=5 --%>
	<form action="">
		left : <input type="number" name="left"> <br>
		right : <input type="number" name="right"> <br>
		<input type="submit" value="출력">
	</form>
	
	<c:if test="${param.left < param.right }">
		<c:forEach begin="${param.left }" end="${param.right }" var="num">
			<p>${num }</p>
		</c:forEach>
	</c:if>
	<c:if test="${param.left >= param.right }">
		left 값 보다 right 값이 더 커야 합니다
	</c:if>
</body>
</html>