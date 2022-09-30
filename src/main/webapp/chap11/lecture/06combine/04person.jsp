<%@page import="java.util.HashMap"%>
<%@page import="jsp20220923.chap07.Person"%>
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
	Map<String, Person> map = new HashMap();
	request.setAttribute("person", map);
	
	Person p1 = new Person();
	p1.setName("임다람");
	p1.setAge(4);
	p1.setAlive(true);
	
	Person p2 = new Person();
	p2.setName("임채은");
	p2.setAge(26);
	p2.setAlive(true);
	
	map.put("person1", p1);
	map.put("person2", p2);
	%>
	
	<p>${person.person1.name }</p>
	<p>${person.person1.age }</p>
	<p>${person.person1.alive }</p>
	<p>${person.person2.name }</p>
	<p>${person.person2.age }</p>
	<p>${person.person2.alive }</p>
</body>
</html>