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
	<h1>쿠키 지우기</h1>
	<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (Cookie cookie:cookies) {
			if (cookie.getName().equals("my-cookie1")) {
				Cookie r = new Cookie("my-cookie1", "");
				r.setMaxAge(0); // 쿠키의 지속시간이 0 // 죽은 쿠키 // 쿠키 지우기
				response.addCookie(r);
			}
		}
	}
	%>
	<a href="02readCookie.jsp">쿠키보러가기</a>
</body>
</html>