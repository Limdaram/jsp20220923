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
	<%
	pageContext.setAttribute("myName", "임다람");
	request.setAttribute("myName", "임채은");
	
	pageContext.setAttribute("your Name", "다람이");
	request.setAttribute("99name", "다람쥐");
	%>
	
	<p>${myName }</p>
	<p>${requestScope.myName }</p>
	<p>${pageScope["your Name"] }</p> <%-- 띄어쓰기 --%>
	<p>${requestScope["99name"] }</p> <%-- 숫자로 시작 --%>
</body>
</html>