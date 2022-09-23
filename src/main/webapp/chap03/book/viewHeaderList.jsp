<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- directive : 책 53 -->
<!-- page, taglib, include -->
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더 목록 출력</title>
</head>
<body>
	<%
	Iterator headerEnum = request.getHeaderNames().asIterator();
	while (headerEnum.hasNext()) {
		String headerName = (String)headerEnum.next();
		String headerValue = request.getHeader(headerName);
	%>
		<%= headerName %> = <%= headerValue %> <br>
	<%
	}
	%>
	
	<hr />
	
	<%
	Iterator headerEnum = request.getHeaderNames().asIterator();
	while (headerEnum.hasNext()) {
		String headerName = (String)headerEnum.next();
		String headerValue = request.getHeader(headerName);
		out.print( headerName);
		out.write("="); 
		out.print(headerValue);
		out.write("<br>");
	}
	%>
</body>
</html>