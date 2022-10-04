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
	<c:choose>
		<c:when test="${param.genre == 'comedy' }">
			<p>극한직업</p>
		</c:when>
		<c:when test="${param.genre == 'animation' }">
			<p>toy story</p>
		</c:when>
		<c:when test="${param.genre == 'action' }">
			<p>spiderman</p>
		</c:when>
		<c:otherwise>
			장르를 comedy, animation, action 중에서 선택해주세요
		</c:otherwise>
	</c:choose>
</body>
</html>