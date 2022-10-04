<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h3>값을 거꾸로 넣을 수 없음: begin이 end보다 클 수 없음</h3>
	<c:forEach begin="9" end="1" var="i">
		<p>${i }</p>
	</c:forEach>
	
	<h3>begin이 0보다 작을 수 없음</h3>
	<%-- <c:forEach begin="-10" end="0" var="i">
		<p>${i }</p>
	</c:forEach> --%>
	
	<h3>1씩 증가하지 않을 수 있음-step 속성으로 얼마씩 증가할 지 결정</h3>
	<c:forEach begin="1" end="9" step="2" var="i">
		<p>${i }</p>
	</c:forEach>
	
	<h3>step 은 0보다 커야함</h3>
	<%-- <c:forEach begin="1" end="9" step="0" var="i">
		<p>${i }</p>
	</c:forEach> --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>