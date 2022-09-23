<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-10까지의 합 : 표현식만 사용</title>
</head>
<body>
	<h1>1부터 10까지의 합은</h1>
	<%
	int sum = 0;
	for (int i=0; i<=10; i++) {
		sum += i;
	}
	%>
	<h1><%= sum %>입니다.</h1>
</body>
</html>