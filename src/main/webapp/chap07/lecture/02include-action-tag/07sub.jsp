<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
Object o = request.getAttribute("mylist");
List<String> list = (List<String>) o;

if (list != null) {
	for (String item : list) {
		out.println("<P>" + item + "</p>");
	}
}
%>