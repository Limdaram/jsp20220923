<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
request.setAttribute("attr1", "daram1");
session.setAttribute("attr1", "daram2");
application.setAttribute("attr1", "daram3");
%>

<jsp:forward page="03to.jsp"></jsp:forward>