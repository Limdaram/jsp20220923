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
	List<String> l = List.of("java", "spring", "css");
	request.setAttribute("langs", l);
	%>
	<%
	List<String> list = (List<String>) request.getAttribute("langs");
	// list 전체 출력하기 위해 for문 사용하기
	for (int i=0; i<list.size(); i++) {
		request.setAttribute("idx", i); // i를 idx에 넣어서 
	%>
		<p>${langs[idx] }</p> <%-- idx를 출력 --%>
	<%	
	}
	%>
	
</body>
</html>