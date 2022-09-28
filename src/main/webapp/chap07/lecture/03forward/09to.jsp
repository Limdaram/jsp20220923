<%@page import="java.util.Map"%>
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
	Map<String, String> map = (Map<String, String>) request.getAttribute("address");
	%>
	<h1>trump : <%= map.get("trump") %></h1> <%-- new york 출력 --%>
	<h1>donald : <%= map.get("donald") %></h1> <%-- chicago 출력 --%>
	<hr>
	<h1>el사용</h1>
	<h1>trump : ${address.trump }</h1>
	<h1>donald : ${address.donald }</h1>
</body>
</html>