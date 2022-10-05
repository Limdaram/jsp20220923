<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%> 
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<h3>url : url을 만들 때 사용하는 tag</h3>
	
	<%-- value 속성에 명시된 url 만들고 출력 --%>
	<c:url value="02url.jsp">
	
	</c:url>
	
	<hr>
	<%-- request 파라미터(쿼리스트링) 생성시 유용 --%>
	<c:url value="02url.jsp?name=임다람&age=26"></c:url>
	<c:url value="02url.jsp">
		<c:param name="name">임다람</c:param>
		<c:param name="age">26</c:param>
	</c:url> <br>
	
	<c:url value="02url.jsp?name=임다람&age=26"></c:url> <br>
	<c:url value="02url.jsp">
		<c:param name="name">임다람</c:param>
	</c:url> <br>
	
	<hr>
	<c:url value="03url.jsp">
		<c:param name="name">임다람</c:param>
		<c:param name="age">26</c:param>
	</c:url>
	
	<br>
	<%-- 완성된 url을 page영역 attribute(el 변수)로 저장하기 --%>
	<c:url value="https://search.naver.com/search.naver" var="naverSquirrel" scope="request">
		<c:param name="query">다람쥐</c:param>
	</c:url>
	
	<br>
	<a href="<c:url value="https://search.naver.com/search.naver">
		<c:param name="query">다람쥐</c:param>
	</c:url>">네이버에서 다람쥐 검색결과</a>
	<br>
	<a href="${naverSquirrel }">다람쥐</a>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>