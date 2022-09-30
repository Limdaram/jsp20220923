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
	Map<String, String> map = Map.of("abc", "java", "my key", "css", "2", "jsp", "efg", "html");
	request.setAttribute("map", map);
	request.setAttribute("def", "efg");
	%>
	
	
	<p>${map.abc }</p> <%-- java --%>
	<p>${map["my key"] }</p> <%-- css --%>
	<p>${map[def] }</p> <%-- html --%>
	<p>${map["2"] }</p> <%-- jsp --%>
</body>
</html>