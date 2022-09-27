<%@page import="jsp20220923.chap07.Book"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
	<%
	Map<String, Book> map = (Map<String, Book>) request.getAttribute("books");
	%>
	
	<p><%= map.get("book1").getTitle() %> : <%= map.get("book1").getPrice() %></p>
	<p><%= map.get("book2").getTitle() %> : <%= map.get("book2").getPrice() %></p>