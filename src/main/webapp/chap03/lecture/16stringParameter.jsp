<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action="">
	영어 : <input type="text" name="e"> <br>
	수학 : <input type="text" name="m"> <br>
	국어 : <input type="text" name="k">
	<%-- submit 버튼 value 속성 : 버튼에 표시되는 내용 --%>
	<input type="submit" value="평균 구하기">
	</form>
<hr>
	<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
	<%
	String e = request.getParameter("e");
	String m = request.getParameter("m");
	String k = request.getParameter("k");
	
	
	Integer E = 0;
	if(e != null) {
		E = Integer.valueOf(e);
	}
	
	Integer M = 0;
	if(m != null) {
		M = Integer.valueOf(m);
	}
	
	Integer K = 0;
	if(k != null) {
		K = Integer.valueOf(k);
	}
	
	double avg = (E+M+K) / 3.0;
	%>
	
	<p>
	3과목의 평균값은 <%= avg %> 입니다.
	</p>

</body>
</html>