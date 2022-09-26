<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파라미터</h1>
	<%
	String val1 = request.getParameter("q");
	String val2 = request.getParameter("w");
	String val3 = request.getParameter("coffee");
	%>
	
	<p><%= val3 %></p>
	
	<p><%= val1 %></p>
	<p><%= val2 %></p>
	
	
</body>
</html>