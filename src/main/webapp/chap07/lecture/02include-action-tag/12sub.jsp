<%@page import="jsp20220923.chap07.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
List<Book> list = (List<Book>) request.getAttribute("books");
%>

<p><%= list.get(0).getTitle() %> : <%= list.get(0).getPrice() %></p>
<p><%= list.get(1).getTitle() %> : <%= list.get(1).getPrice() %></p>