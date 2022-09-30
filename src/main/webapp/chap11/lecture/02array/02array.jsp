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
	String[] arr1 = {"eleven", "love dive", "after like"};
	request.setAttribute("song", arr1);
	%>
	<%-- request.setAttribute("song", new String[] {"eleven", "love dive", "after like"});  --%>

	<p>${song[0] }</p>
	<p>${song[1] }</p>
	<p>${song[2] }</p>
</body>
</html>