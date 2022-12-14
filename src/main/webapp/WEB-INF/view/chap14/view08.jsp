<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>

	<form action="">
		<input type="text" name="id">
		<input type="submit" value="제출">
	</form>

	<c:if test="${empty customer }">
		<p>상품 번호를 입력해주세요</p>
	</c:if>
	<c:if test="${not empty customer }">
		<h1>${customer.id }번 고객</h1>
		<p>이름 : ${customer.name }</p>
		<p>주소 : ${customer.address }</p>
		<p>나라 : ${customer.country }</p>
		<p>도시 : ${customer.city }</p>		
	</c:if>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>