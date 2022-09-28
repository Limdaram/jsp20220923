<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<%
// request attribute
request.setAttribute("name1", "daram1");

// session attribute
// session type : HttpSession
session.setAttribute("name2", "daram2");
response.sendRedirect("08to-attribute.jsp");
%>