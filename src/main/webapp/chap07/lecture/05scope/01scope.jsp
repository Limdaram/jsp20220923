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
	<h1>scope 객체들 (책 132쪽, 5장)</h1>
	<h3>pageContext, request, session, application</h3>
	
	<%
	pageContext.setAttribute("page1", "page attr1"); // 하나의 jsp 페이지를 처리할 때 사용되는 영역 (type : PageContext)
	request.setAttribute("req1", "req attr1"); // 하나의 HTTP 요청을 처리할 때 사용되는 영역 (type : HttpServletRequest)
	session.setAttribute("sess1", "sess attr1"); // 하나의 웹 브라우저와 관련된 영역 (type : HttpSession)
	application.setAttribute("app1", "app attr1"); // 하나의 웹 어플리케이션과 관련된 영역 (type : ServletContext)
	%>
</body>
</html>