<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

	<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	
	String r1 = num1 + num2; // 35
	Integer r2 = Integer.valueOf(num1) + Integer.valueOf(num2); // 8
	%>
	
	<p>r1 (연결연산) : <%= r1 %></p>
	<p>r2 (연결연산) : <%= r2 %></p>