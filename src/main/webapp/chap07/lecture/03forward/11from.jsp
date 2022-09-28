<%@page import="java.util.ArrayList"%>
<%@page import="jsp20220923.chap07.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<%
List<Person> list = new ArrayList<>();
Person p1 = new Person();
Person p2 = new Person();
Person p3 = new Person();

p1.setName("daram1");
p2.setName("daram2");
p3.setName("daram3");

list.add(p1);
list.add(p2);
list.add(p3);
request.setAttribute("list", list);
%>

<jsp:forward page="11to.jsp"></jsp:forward>