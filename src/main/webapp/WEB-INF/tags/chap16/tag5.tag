<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="attr" %> <%-- attribute 디렉티브 --%>
<%-- 이 태그에서 사용할 attribute 정의 --%>
<%@ attribute name="bttr" %>

<div>
	다섯번째 태그
	<br>
	${attr }
	<br>
	${bttr }
</div>