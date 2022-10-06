<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attrMap" %>

<nav class="navbar navbar-expand-lg bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      
      <c:forEach items="${menuItems }" var="menu">
      	<c:if test="${menu.trim() != current }">
	        <li class="nav-item">
	          <a class="nav-link" aria-current="page" href="${attrMap[menu] }">${menu }</a>
	        </li>            	
      	</c:if>
      	<c:if test="${menu.trim() == current }">
      		<li class="nav-item">
          		<a class="nav-link active" aria-current="page" href="${attrMap[menu] }">${menu }</a>
        	</li>
      	</c:if>
      </c:forEach>
      </ul>
    </div>
  </div>
</nav>

