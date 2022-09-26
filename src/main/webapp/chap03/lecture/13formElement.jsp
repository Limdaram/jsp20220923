<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>여러 파라미터 보내기</h1>

<form action="13formElement.jsp">
	<input type="text" name="coffee"/>
	<input type="text" name="tea"/>
	<input type="submit"/>
</form>
<hr/>

<%
String coffee = request.getParameter("coffee");
String tea = request.getParameter("tea");
%>
<p>
<%= coffee %>와 <%= tea %>
</p>

</body>
</html>