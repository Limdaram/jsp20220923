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
	<h1>action : 경로</h1>
	<%--
	프로토콜로 시작하면 외부 경로
	 --%>
	 // 외부 절대 경로
	 <%--
	 네이버
	 https://search.naver.com/search.naver
	  --%>
	 <form action="https://search.naver.com/search.naver">
	 네이버 : <input type="text" name="query">
	 <input type="submit" value = "검색"> 
	 </form>
	 
	 <%--
	 구글
	 https://www.google.com/search
	  --%>
	 <form action="https://www.google.com/search">
	 구글 : <input type="text" name="query" value="bts">
	 <input type="submit" value="검색">
	 </form>
	 
	 <%--
	 다음
	 https://search.daum.net/search
	  --%>
	 <form action="https://search.daum.net/search">
	 다음 : <input type="text" name="query" value="bts">
	 <input type="submit" value ="검색">
	 </form>
	 
</body>
</html>