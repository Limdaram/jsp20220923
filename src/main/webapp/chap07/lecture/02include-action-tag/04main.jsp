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
	<div>
		메인 컨텐츠
	</div>
	
	<jsp:include page="04sub.jsp">
		<jsp:param value="인천" name="address"/>
		<jsp:param value="임채은" name="name"/>
	</jsp:include>
</body>
</html>