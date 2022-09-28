<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
request.setAttribute("num1", 4); // attribute에는 integer도 넣을 수 있다
request.setAttribute("num2", 26);
%>

<jsp:forward page="07to.jsp"></jsp:forward>