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
<%-- to.jsp에서 작성해도 잘 꺼내쓸 수 있다 --%>
	name : <%= request.getParameter("name") %> <br>
	age : <%= request.getParameter("age") %>
</body>
</html>