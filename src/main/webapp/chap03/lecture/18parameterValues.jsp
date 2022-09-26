<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="">
	<input type="text" name="scores" value="0">
	<br>
	<input type="text" name="scores" value="0">
	<br>
	<input type="text" name="scores" value="0">
	<br>
	<input type="submit" value="평균구하기">
</form>
<hr>
<% String val = request.getParameter("scores"); %>
<% String[] scores = request.getParameterValues("scores");

if (scores != null)  {
	Integer sum = 0;
	for (String score : scores) {
		sum += Integer.valueOf(score);
		
		out.print("<P>");
		out.print("점수 : " + score);
		out.print("</P>");
	}
	double avg = sum / 3.0;
%>

<p>평균 : <%= avg %></p>

<% } %>
</body>
</html>