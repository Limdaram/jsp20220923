<%@page import="jsp20220923.chap07.Book"%>
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
	request.setAttribute("book1", new Book("java", 5000));
	request.setAttribute("book2", new Book("jsp", 6000));
	%>
	
	<p>${book1.title }</p>
	<p>${book1.price }</p>
	<p>${book2.title }</p>
	<p>${book2.price }</p>
	
</body>
</html>