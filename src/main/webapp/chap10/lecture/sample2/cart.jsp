<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String product = request.getParameter("product");
	
	Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("goods");
	if (cart == null) {
		cart = new HashMap<String, Integer>();
		session.setAttribute("goods", cart);
	}
	
	if (product != null && !product.trim().isEmpty()) {
		cart.computeIfPresent(product, (k, v) -> v + 1);
		cart.computeIfAbsent(product, (k) -> 1);		
	}
	%>
	
	<h1>장바구니</h1>
	<%
		for (Map.Entry<String, Integer> entry : cart.entrySet()) {
			out.print("<li>");
			out.print(entry.getKey());
			out.print(":");
			out.print(entry.getValue());
			out.print("</li>");
		}
	%>
	<a href="product.jsp">상품 보기</a>
</body>
</html>