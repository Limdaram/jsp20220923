<%@page import="java.util.ArrayList"%>
<%@page import="jsp20220923.chap07.Car"%>
<%@page import="java.util.List"%>
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
	List<Car> c = new ArrayList<>();
	c.add(new Car("myCar", 100));
	c.add(new Car("yourCar", 50));
	request.setAttribute("cars", c);
	%>
	
	<p>${cars[0].company }</p>
	<p>${cars[0].price }</p>
	<p>${cars[0].model }</p>
	<p>${cars[1].company }</p>
	<p>${cars[1].price }</p>
	<p>${cars[1].model }</p>
</body>
</html>