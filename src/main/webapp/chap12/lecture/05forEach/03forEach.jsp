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
	<%-- 구구단 출력 --%>
	<%-- request parameter "dan" --%>
	<form action="">
		구구단 : <input type="text" name="dan"> <br>
		<input type="submit" value="출력">	
	</form>	
	
		
	<c:if test="${not empty param.dan }">
		<c:if test="${param.dan >=1 && param.dan <=9 }" var="num">
			<h3>구구단 ${param.dan }단 출력</h3>
			<c:forEach begin="1" end="9" var="x">
				<p>${param.dan } x ${x } = ${param.dan * x }</p>
			</c:forEach>
		</c:if>
<%-- 		<c:if test="${not num}"> --%>
		<c:if test="${param.dan <1 || param.dan>9 }">
			1부터 9까지의 값을 입력하세요
		</c:if>
	</c:if>
	<hr>
	<c:if test="${empty param.dan }">	
		값을 입력하세요
	</c:if>

	
	
</body>
</html>