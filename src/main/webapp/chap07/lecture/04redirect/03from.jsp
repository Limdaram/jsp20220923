<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    

<%
// 03to.jsp로 다시 요청 보내라
response.sendRedirect("03to.jsp");
// 주소창에 to.jsp의 흔적이 남아 있다(두번째 요청의 흔적)
%>