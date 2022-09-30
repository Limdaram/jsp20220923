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
	request.setAttribute("myattr2", "myval2");
	%>

	<p>${myattr2 }</p> <%-- myval2 출력 --%>
</body>
</html>