<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<jsp:forward page="05to.jsp">
	<jsp:param value="26" name="age"/>
	<jsp:param value="asdf@naver.com" name="email"/>
</jsp:forward>