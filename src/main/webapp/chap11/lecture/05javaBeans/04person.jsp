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
	Person person = new Person();
	person.setName("임다람");
	person.setAge(26);
	person.setAlive(true);
	request.setAttribute("p", person);
	
	
	%>
	<p>${p.name }</p>
	<p>${p.age }</p>
	<p>${p.alive }</p>
	
</body>
</html>