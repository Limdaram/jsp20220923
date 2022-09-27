<%@page import="java.util.List"%>
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
	<%
	List<String> list1 = List.of("게시물1", "게시물2", "게시물3");
	List<String> list2 = List.of("댓글1", "댓글2");
	
	request.setAttribute("boardList", list1);
	request.setAttribute("commentList", list2);
	%>
	
<h1>09main</h1>

<div>
	<jsp:include page="09sub-attribute.jsp"></jsp:include>
</div>	
</body>
</html>