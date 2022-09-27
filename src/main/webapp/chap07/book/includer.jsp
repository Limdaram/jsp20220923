<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브</title>
</head>
<body>

<%
	int number = 10;
%>

<%@ include file = "includee.jspf" %> <%-- 같은 경로일때는 파일 이름만 쓰면 된다. 다른 폴더일때만 경로 쓰기 --%>
공통변수 DATAFOLDER = "<%= dataFolder %>"

</body>
</html>