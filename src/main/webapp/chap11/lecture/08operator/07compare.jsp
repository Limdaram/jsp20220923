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
	<h3>비교 연산자의 피연산자가 수가 아닐 때</h3>
	<p>${3 < 200 }</p>
	<p>${"3" < "200" }</p> <%-- string 비교이기 때문에 3이 더 크다 (false) --%>
	<p>${"3" < 200 }</p> <%-- 둘 중 하나가 수이면 나머지도 수로 변환 --%>
</body>
</html>