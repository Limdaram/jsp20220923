<%@page import="java.util.ArrayList"%>
<%@page import="jsp20220923.chap07.Person"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
	Map<String, List<Person>> map = new HashMap<>();
	List<Person> l1 = new ArrayList<>();
	List<Person> l2 = new ArrayList<>();
	
	Person p1 = new Person();
	Person p2 = new Person();
	Person p3 = new Person();
	Person p4 = new Person();
	
	p1.setName("임다람");
	p1.setAge(4);
	
	p2.setName("임채은");
	p2.setAge(26);
	
	p3.setName("다람이");
	p3.setAge(100);
	
	p4.setName("다람쥐");
	p4.setAge(50);
	
	l1.add(p1);
	l1.add(p2);

	l2.add(p3);
	l2.add(p4);

	map.put("people1", l1);
	map.put("people2", l2);
	
	request.setAttribute("people", map);
	
	
	%>
	
	<p>${people.people1[0].name }</p>
	<p>${people.people1[0].age }</p>
	
	<p>${people.people1[1].name }</p>
	<p>${people.people1[1].age }</p>
	
	<p>${people.people2[0].name }</p>
	<p>${people.people2[0].age }</p>
	
	<p>${people.people2[1].name }</p>
	<p>${people.people2[1].age }</p>

	<%-- map 안에 list 안에 person --%>
	<%-- people 안에 people1[0] 안에 name --%>
	
</body>
</html>