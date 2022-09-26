<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 적절한 html 코드 작성하기 --%>
<%-- name = "heros"인 요소는 checkbox로 만들기 --%>

<form action="">
<input type="text" name="name"> <br>
<input type="checkbox" name="heros" value="iron"> 아이언맨
<input type="checkbox" name="heros" value="spider"> 스파이더맨
<input type="checkbox" name="heros" value="cap"> 캡틴아메리카
<input type="checkbox" name="heros" value="hurk"> 헐크
<input type="checkbox" name="heros" value="black"> 블랙팬서

<br>
<input type="submit" value="전송">

</form>

<hr>
<%
String name = request.getParameter("name");
String[] heros = request.getParameterValues("heros");

if (heros != null) {
	out.print("<p>");
	out.print(name + "님이 좋아하는 영웅은 ");
	for (String hero : heros) {
		out.print(hero + " ");
	}
	out.print(" 입니다.");
	out.print("</p>");
}
%>
</body>
</html>