<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
Object l = request.getAttribute("list1");
List<String> list = (List<String>) l;

Object m = request.getAttribute("map1");
Map<String, String> map = (Map<String, String>) m;
%>

<%
if (l != null && m != null) {
	out.println(list.get(0));
	out.println(list.get(1));
	out.println(list.get(2));
	out.println(list.get(3));
	out.println(map.get("jisu"));
	out.println(map.get("v"));
}
%>