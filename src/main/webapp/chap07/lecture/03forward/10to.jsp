<%@page import="jsp20220923.chap07.Person"%>
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
	Person p1 = (Person) request.getAttribute("person1");
	%>
	<p>name : <%= p1.getName() %></p>
	<p>name : <%= p1.getAge() %></p>
	<p>name : <%= p1.isAlive() %></p>
	<hr>
	<h1>el 작성</h1>
	<p>name : ${person1.name }</p>
	<p>name : ${person1.age }</p>
	<p>name : ${person1.alive }</p>
</body>
</html>