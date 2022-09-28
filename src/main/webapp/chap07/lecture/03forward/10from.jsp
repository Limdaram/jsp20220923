
<%@page import="jsp20220923.chap07.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
Person p = new Person();
p.setName("daram");
p.setAge(100);
p.setAlive(true);

request.setAttribute("person1", p);
%>

<jsp:forward page="10to.jsp"></jsp:forward>