<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attrMap" %>

<%-- <div>
${attrMap }
</div> --%>
<div>
<c:forEach items="${attrMap }" var="attr">
	<p>${attr.value }</p>
</c:forEach>
</div>