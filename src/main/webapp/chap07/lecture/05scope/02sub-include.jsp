<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

	<h3>sub.jsp</h3>
<hr>
	<p><%= pageContext.getAttribute("page1")%></p> <%-- null --%>
	<p><%= request.getAttribute("req1")%></p> <%-- req attr1 --%>
	<p><%= session.getAttribute("sess1")%></p> <%-- sess attr1 --%>
	<p><%= application.getAttribute("app1") %></p> <%-- app attr1 --%>
<hr>
	 