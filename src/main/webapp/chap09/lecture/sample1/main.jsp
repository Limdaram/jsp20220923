<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container {
		display: flex;
	}
	
	.main {
		width: 80%;
	}
	
	.ad {
		background-color : linen;
		width: 20%;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="main">
			<h1>메인 페이지</h1>
			<a href="other1.jsp">other1 페이지로 가기</a> <br>
			<a href="other2.jsp">other2 페이지로 가기</a>
			<form action="">
				검색 : <input type="text" name="q">
				<input type="submit" value="검색">
			</form>
			
			<%
			String q = request.getParameter("q");
			if(q != null && !q.isBlank()) {
				
			%>
				<h3><%= q %>의 검색결과</h3>
			<%
				// cookie에 검색 키워드 저장
				String k = URLEncoder.encode(q, "utf-8");
				Cookie cookie = new Cookie("k", k);
				cookie.setMaxAge(24*60*60); // 하루
				cookie.setPath("/"); // 항상 들고다니기
				response.addCookie(cookie);
				// 쿠키는 브라우저를 닫으면 사라진다
				// 닫아도 유지시키고 싶다면 쿠키 지속시간을 늘리면 된다
			}
			%>
		</div>
			
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
	
</body>
</html>