<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fieldset Manager</title>
</head>
<body>
	<h1>${fsm.name }</h1>
	<table>
		<thead>
			<tr>
				<th>Server Name</th>
				<th>Scheme</th>
				<th>Info</th>
				<th>Port</th>
				<th>Protocol</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${fsm.connectors }">
				<tr>
					<td>${pageContext.request.serverName }</td>
					<td>${item.scheme }</td>
					<td>${item.info }</td>
					<td>${item.port }</td>
					<td>${item.protocol }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<h1>Host Children</h1>
	<table>
		<thead>
			<tr>
				<th>Base Name</th>
				<th>Display Name</th>
				<th>Path</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${fsm.host.findChildren() }">
				<c:url var="itemUrl"
					value="${fsm.httpConnector.scheme }://${pageContext.request.serverName }:${fsm.httpConnector.port }${item.path }" />
				<tr>
					<td>${item.baseName }</td>
					<td>${item.displayName }</td>
					<td><a href="${itemUrl }">${item.path }</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<c:url var="manager"
		value="${fsm.httpConnector.scheme }://${pageContext.request.serverName }:${fsm.httpConnector.port }${fsm.managerContext.path }" />
	<a href="${manager }">Tomcat Manager</a>
</body>
</html>