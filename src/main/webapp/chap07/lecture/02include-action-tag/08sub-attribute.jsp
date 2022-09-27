<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

	<%
	Object o = request.getAttribute("myMap");
	Map<String, String> map = (Map<String, String>) o;
	

	if (map != null) {
	%>
		<p> <%= map.get("name") %></p>
		<p> <%= map.get("address") %></p>

	<%}%>

	<%
	if (map != null) {
		out.println(map.get("name"));
		out.println(map.get("address"));
	}%>
