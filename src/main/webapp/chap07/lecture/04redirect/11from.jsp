<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
Map<String, String> songs = Map.of("song1", "After like", "song2", "love dive");
session.setAttribute("songs", songs);
response.sendRedirect("11to.jsp");
%>