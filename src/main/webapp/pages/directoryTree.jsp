<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<ul>
<c:forEach var="item" items="${directory }">
	<c:if test="${item instanceof ca.blackperl.fieldsets.beans.Leaf }">
		<li>${item.path }</li>		
	</c:if>
</c:forEach>
</ul>
