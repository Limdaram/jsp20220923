<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty param.name and not empty param.address }" var="notEmptyAll">
		<p>${param.name }님의 주소는 ${param.address }입니다.</p>
	</c:if>
	
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto ipsum eveniet reprehenderit saepe delectus quas assumenda molestiae impedit eum distinctio dolorum omnis explicabo sint nobis id voluptatibus animi! Maiores quis.</p>
	
	<c:if test="${notEmptyAll}">
		<p>이름과 주소가 모두 있습니다.</p>
	</c:if>
	
	<c:if test="${not notEmptyAll}">
		<p>이름과 주소를 모두 작성해주세요.</p>
	</c:if>
	
</body>
</html>