<%@page import="java.util.ArrayList"%>
<%@page import="jsp20220923.chap07.Car"%>
<%@page import="java.util.List"%>
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
	<%-- <%
	pageContext.setAttribute("cars", List.of(new Car("제네시스", 500), new Car("k8", 300), new Car("그렌저", 100)));
	%> --%>
	
	<%
	List<Car> list = new ArrayList<>();
	
	Car car1 = new Car();
	car1.setModel("제네시스");
	car1.setPrice(500);
	
	Car car2 = new Car();
	car2.setModel("k8");
	car2.setPrice(300);
	
	Car car3 = new Car();
	car3.setModel("그렌저");
	car3.setPrice(100);
	
	list.add(car1);
	list.add(car2);
	list.add(car3);
	
	pageContext.setAttribute("cars", list);
	%>
	
	<c:forEach items="${cars }" var="car" >
		<p>${car.model } : ${car.price }</p>
	</c:forEach>
	
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>모델</th>
				<th>가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cars }" var="car" varStatus="status">
				<tr>
					<td>${status.count }</td>
					<td>${car.model }</td>
					<td>${car.price }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>