<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Formatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>

<%
	Date time = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd:mm:ss");
%>

<html>
<head>
<meta charset="UTF-8">
<title>세션정보</title>
</head>
<body>
	세션 ID : <%= session.getId() %> <br>
	<%
	time.setTime(session.getCreationTime());
	%>
	세션생성시간 : <%= formatter.format(time) %> <br>
	<%
	time.setTime(session.getLastAccessedTime());
	%>
	최근접근시간 : <%= formatter.format(time) %>
</body>
</html>