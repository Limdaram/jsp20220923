<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="left" %>
<%@ attribute name="right" %>
<%@ attribute name="active" %>


<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <c:forEach begin="${left }" end="${right }" var="item">
    	<c:if test="${item != active }">
	    	<li class="page-item"><a class="page-link" href="#">${item }</a></li> 	
    	</c:if>
	   	<c:if test="${item == active }">
			<a href="#" class="page-link active">${item }</a>	    			
		</c:if>
		<%-- <li class="page-item ${pageNumber eq active ? 'active' : '' }"><a class="page-link" href="#">${pageNumber }</a></li> --%>
    </c:forEach>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>