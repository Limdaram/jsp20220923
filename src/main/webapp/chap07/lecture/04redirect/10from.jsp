<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>   
 
<%
List<String> names = List.of("daram1", "daram2");
session.setAttribute("names", names);
response.sendRedirect("10to.jsp");
%>