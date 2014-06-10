<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h3>Page attributes:</h3>
<table>
	<c:forEach items="${pageScope}" var="p">
		<tr>
			<td>${p.key}</td>
			<td>${p.value}</td>
		</tr>
	</c:forEach>
</table>
<h3>Request attributes:</h3>
<table>
	<c:forEach items="${requestScope}" var="p">
		<tr>
			<td>${p.key}</td>
			<td>${p.value}</td>
		</tr>
	</c:forEach>
</table>
<h3>Session attributes:</h3>
<table>
	<c:forEach items="${sessionScope}" var="p">
		<tr>
			<td>${p.key}</td>
			<td>${p.value}</td>
		</tr>
	</c:forEach>
</table>
<h3>Application attributes:</h3>
<table>
	<c:forEach items="${applicationScope}" var="p">
		<tr>
			<td>${p.key}</td>
			<td>${p.value}</td>
		</tr>
	</c:forEach>
</table>
